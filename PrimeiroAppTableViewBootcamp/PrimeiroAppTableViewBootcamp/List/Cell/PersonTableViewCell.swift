//
//  PersonTableViewCell.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Caio Fabrini on 22/07/24.
//

import UIKit

// MARK: - Receita de bola da celula!!!!!
// 1- Com viewCode, utilize o construtor override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
// 2- TODOS OS ELEMENTOS DEVEM SER ADICIONADOS COM O contentView.addSubview(nomeDoElemento)
// 3- Nas suas constraints NÃO SE ESQUECE DE SEMPRE QUE SE FOR BASEAR NA SUPERVIEW(que é a celula),VOCÊ PRECISA UTILIZAR O CONTENTVIEW!!!
// 4- Cuidado com as constraints!! Para que você possa trabalhar com tableView, você precisa ter uma AMARRAÇÃO DO TOPO COM A PARTE INFERIOR DA CELULA, CASO CONTRARIO, SEU LAYOUT NÃO VAI SE MONTAR DA FORMA CORRETA!!
// 5- Criar o identifier da celula! Ele deve ser do mesmo nome da classe e de SEU ARQUIVO!!!
// 6- Depois de configurar toda a celula, crie o metodo de setup!!! Ele será o responsavel para montar toda a sua celula!

class PersonTableViewCell: UITableViewCell {

//  static var identifier = "PersonTableViewCell"
  static var identifier = String(describing: PersonTableViewCell.self)

  lazy var personImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  lazy var nameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 28)
    label.numberOfLines = 0
    label.textAlignment = .left
    return label
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    selectionStyle = .none
    addElements()
    configConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func addElements() {
    contentView.addSubview(nameLabel)
    contentView.addSubview(personImageView)
  }

  func configConstraints() {
    NSLayoutConstraint.activate([

      personImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
      personImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
      personImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      personImageView.heightAnchor.constraint(equalToConstant: 100),
      personImageView.widthAnchor.constraint(equalToConstant: 100),

      nameLabel.centerYAnchor.constraint(equalTo: personImageView.centerYAnchor),
      nameLabel.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 20),
      nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),

    ])
  }

  func setupCell(person: Person) {
    nameLabel.text = "Nome: \(person.name)"
    personImageView.image = UIImage(systemName: person.image)
  }

}
