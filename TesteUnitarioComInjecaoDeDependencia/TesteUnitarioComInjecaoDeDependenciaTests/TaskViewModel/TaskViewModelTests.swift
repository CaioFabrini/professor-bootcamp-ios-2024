//
//  TaskViewModelTests.swift
//  TesteUnitarioComInjecaoDeDependenciaTests
//
//  Created by Caio Fabrini on 14/10/24.
//

import XCTest
@testable import TesteUnitarioComInjecaoDeDependencia

// Oque é o @testable?
// O @testable é um modificador de acesso que permite que outro modulo(pod) tenha acesso ao seu codigo como se fosse 'public'


// Given: Define o cenário inicial, preparando os dados ou o estado do mesmo.
// When:  Executa a ação que está sendo TESTADA, como adicionar, remover, completar uma tarefa...
// Then:  Verifica os resultado esperados, garantindo que as mudanças foram aplicadas/executadas corretamente.

// Oque é um Spy?

// Um Spy ou classe espiã -> é uma implementação de testes que age como se fosse um observador. Ele é feito para capturar e armazenar detalhes sobre o uso do método e propriedades. Com o Spy você pode:
// - Verificar a quantidade de vezes que o método foi chamado e contabilizar
// - Capturar parâmetros que foram passados nos métodos

final class TaskViewModelTests: XCTestCase {

  var viewModel: TaskViewModel!
  var spy: TaskViewModelDelegateSpy!

  override func setUpWithError() throws {
    viewModel = TaskViewModel()
    spy = TaskViewModelDelegateSpy()
    viewModel.delegate = spy
  }

  override func tearDownWithError() throws {
    viewModel = nil
    spy = nil
  }

  func testAddTask() throws {
    // Given:
    let title = "New Task"
    // When:
    viewModel.addTask(title: title)
    // Then:
    XCTAssertEqual(viewModel.numberOfRows, 1)
    XCTAssertEqual(viewModel.loadCurrentTask(indexPath: IndexPath(row: 0, section: 0)).title, title)
    XCTAssertTrue(spy.didReloadDataCalled)
  }

  func testChangeTaskStatus() {
    // Given:
    viewModel.addTask(title: "New Task")
    let indexPath: IndexPath = IndexPath(row: 0, section: 0)
    // When:
    viewModel.changeTaskStatus(indexPath: indexPath)
    // Then:
    XCTAssertTrue(viewModel.loadCurrentTask(indexPath: indexPath).isCompleted)
    XCTAssertTrue(spy.didReloadDataCalled)
  }

  func testRemoveTask() {
    // Given:
    viewModel.addTask(title: "New Task")
    let indexPath: IndexPath = IndexPath(row: 0, section: 0)
    // When:
    viewModel.removeTask(indexPath: indexPath)
    // Then:
    XCTAssertTrue(viewModel.numberOfRows == 0)
    XCTAssertEqual(viewModel.numberOfRows, 0)
    XCTAssertTrue(spy.didReloadDataCalled)
  }

}
