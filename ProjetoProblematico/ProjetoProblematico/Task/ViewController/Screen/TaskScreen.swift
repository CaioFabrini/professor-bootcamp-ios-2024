//
//  TaskScreen.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//

import UIKit

class TaskScreen: UIView {
  
  public let tableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.backgroundColor = .white
    tableView.register(TaskCell.self, forCellReuseIdentifier: "TaskCell")
    return tableView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupView() {
    self.backgroundColor = .white
    addSubview(tableView)
    setupConstraints()
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
      tableView.leftAnchor.constraint(equalTo: self.leftAnchor),
      tableView.rightAnchor.constraint(equalTo: self.rightAnchor),
      tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
    ])
  }
  
  func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
    tableView.delegate = delegate
    tableView.dataSource = dataSource
    tableView.reloadData()
  }
}
