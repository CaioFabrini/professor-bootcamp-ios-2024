//
//  ViewController.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Caio Fabrini on 22/07/24.
//

import UIKit

// Receita de bolo para TableView
// Assinar os protocols da tableView na VIEWCONTROLLER (delegate e o dataSource)
// Criar a celula do tipo UITableViewCell
// Registre sua celula na tableView!!! (tableView.register(PersonTableViewCell.self, forCellReuseIdentifier: PersonTableViewCell.identifier))
// Configure o numberOfRowsInSection e o cellForRowAt

class ListViewController: UIViewController {

  var screen: ListScreen?
  var listName: [String] = ["Caio", "Bárbara", "Thiago", "Matheus", "Lucas", "Alice"]

  override func loadView() {
    screen = ListScreen()
    self.view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.tableView.delegate = self
    screen?.tableView.dataSource = self
  }

}

extension ListViewController: UITableViewDelegate {

}

extension ListViewController: UITableViewDataSource {

  // retornar para tableView quantas LINHAS teremos na tabela
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return listName.count
  }
  
  // onde configuramos a nossa celula!!
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
    cell?.setupCell(name: listName[indexPath.row])
    return cell ?? UITableViewCell()
  }

}

