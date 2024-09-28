//
//  TaskViewModel.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//


import Foundation

protocol TaskViewModelProtocol: AnyObject {
  func successResponse()
  func failure(message: String)
}

class TaskViewModel {

  private weak var delegate: TaskViewModelProtocol?
  private var tasks: [String] = []

  public func delegate(delegate: TaskViewModelProtocol?) {
    self.delegate = delegate
  }

  func fetchTasks() {
    TaskService.fetchTasks { [weak self] result in
      guard let self else { return }
      switch result {
      case .success(let success):
        tasks = success
        delegate?.successResponse()
      case .failure(let failure):
        delegate?.failure(message: failure.localizedDescription)
      }
    }
  }

  var numberOfRows: Int {
    return tasks.count
  }

  func loadCurrentTask(indexPath: IndexPath) -> String {
    return tasks[indexPath.row]
  }
}
