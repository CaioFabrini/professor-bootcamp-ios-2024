//
//  TaskViewModel.swift
//  TesteUnitarioComInjecaoDeDependencia
//
//  Created by Caio Fabrini on 10/10/24.
//

import Foundation

protocol TaskViewModelDelegate: AnyObject {
  func reloadData()
}

protocol TaskViewModelProtocol: AnyObject {
  var numberOfRows: Int { get }
  var delegate: TaskViewModelDelegate? { get set }
  func loadCurrentTask(indexPath: IndexPath) -> Task
  func addTask(title: String)
  func changeTaskStatus(indexPath: IndexPath)
  func removeTask(indexPath: IndexPath)
}

class TaskViewModel {
  weak var delegate: TaskViewModelDelegate?
  private var tasks: [Task] = []
}

extension TaskViewModel: TaskViewModelProtocol {
  var numberOfRows: Int {
    return tasks.count
  }
  
  func loadCurrentTask(indexPath: IndexPath) -> Task {
    return tasks[indexPath.row]
  }
  
  func addTask(title: String) {
    let newTask = Task(id: UUID(), title: title, isCompleted: false)
    tasks.append(newTask)
    delegate?.reloadData()
  }
  
  func changeTaskStatus(indexPath: IndexPath) {
    tasks[indexPath.row].isCompleted.toggle()
    delegate?.reloadData()
  }
  
  func removeTask(indexPath: IndexPath) {
    tasks.remove(at: indexPath.row)
    delegate?.reloadData()
  }
}
