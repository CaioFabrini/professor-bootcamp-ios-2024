//
//  LoginScreen.swift
//  PrimeiroAppViewCode
//
//  Created by Caio Fabrini on 18/07/24.
//

import UIKit

// MARK: - RECEITA DE BOLO VIEWCODE
// PASSO A PASSO

// 1 - Criar Screen (ex: LoginViewController -> LoginScreen. RegisterViewController -> RegisterScreen)
// 2 - Chamar construtor
// Exemplo:
// init() {
//  super.init(frame: .zero)
// }
//
// required init?(coder: NSCoder) {
//  fatalError("init(coder:) has not been implemented")
// }
// 3 - Criar e configurar elemento (NÃO SE ESQUEÇA DO translatesAutoresizingMaskIntoConstraints = false)


class LoginScreen: UIView {

  lazy var loginLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Login"
    label.font = UIFont.boldSystemFont(ofSize: 28)
    return label
  }()

  init() {
    super.init(frame: .zero)
    backgroundColor = .orange
    addElements()
    configConstraints()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func addElements() {
    addSubview(loginLabel)
  }

  func configConstraints() {
    NSLayoutConstraint.activate([
      loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
      loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }

}
