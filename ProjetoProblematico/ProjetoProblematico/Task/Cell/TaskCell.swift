//
//  TaskCell.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//


import UIKit

class TaskCell: UITableViewCell {

  static let identifier: String = String(describing: TaskCell.self)

  let titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .black
    return label
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    contentView.addSubview(titleLabel)

    NSLayoutConstraint.activate([
      titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
      titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16)
    ])
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setupCell(task: String) {
    titleLabel.text = task
  }
}
