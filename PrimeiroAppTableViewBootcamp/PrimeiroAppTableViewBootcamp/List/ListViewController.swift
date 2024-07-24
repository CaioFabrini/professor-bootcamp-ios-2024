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

struct Person {
  var name: String
  var lastName: String
  var age: Int
  var image: String
}

class ListViewController: UIViewController {

  var screen: ListScreen?
  var listPerson: [Person] = [Person(name: "Caio", lastName: "Fabrini", age: 22, image: "person.circle"),
                              Person(name: "Bárbara", lastName: "Fabrini", age: 21, image: "star.fill"),
                              Person(name: "Thiago", lastName: "Teves", age: 30, image: "person.circle"),
                              Person(name: "Matheus", lastName: "Humbro", age: 28, image: "medal.star"),
                              Person(name: "Lucas", lastName: "Costa", age: 26, image: "folder.circle"),
                              Person(name: "Alice", lastName: "Pereira", age: 20, image: "staroflife.fill")]

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
    return listPerson.count
  }

  // onde configuramos a nossa celula!!
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
    cell?.setupCell(person: listPerson[indexPath.row])
    return cell ?? UITableViewCell()
  }

}

