//
//  ViewController.swift
//  PrimeiroAppViewCode
//
//  Created by Caio Fabrini on 17/07/24.
//

import UIKit

class LoginViewController: UIViewController {

  var screen: LoginScreen?

  override func loadView() {
    screen = LoginScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()

  }


}

