//
//  ViewController.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//

import UIKit

class TaskViewController: UIViewController {

  var viewModel = TaskViewModel()
  var screen: TaskScreen?

  override func loadView() {
    screen = TaskScreen()
    self.view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel.delegate(delegate: self)
    viewModel.fetchTasks()
  }
}

extension TaskViewController: TaskViewModelProtocol {
  func successResponse() {
      self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
  }
  
  func failure(message: String) {
    print(message)
  }
}

extension TaskViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.numberOfRows
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.identifier, for: indexPath) as? TaskCell else {
      return UITableViewCell()
    }

    cell.setupCell(task: viewModel.loadCurrentTask(indexPath: indexPath))
    return cell
  }
}
