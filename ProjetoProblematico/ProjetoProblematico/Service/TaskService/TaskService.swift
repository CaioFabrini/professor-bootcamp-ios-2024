//
//  TaskService.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//

import Foundation

class TaskService {

  static func fetchTasks(completion: @escaping (Result<[String], Error>) -> Void) {
    guard let url = URL(string: "https://run.mocky.io/v3/67ba318e-86f5-4faf-ba0e-9202896b9db2") else {

      let error = NSError(domain: "Error URL invalida", code: -1)
      completion(.failure(error))
      return
    }

    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error {
        DispatchQueue.main.async {
          completion(.failure(error))
        }
        return
      }

      guard let data else {
        DispatchQueue.main.async {
          let error = NSError(domain: "Error not data", code: -1)
          completion(.failure(error))
        }
        return
      }

      do {
        let tasksArray = try JSONDecoder().decode([Task].self, from: data)

        let tasks = tasksArray.map { $0.title }
        DispatchQueue.main.async {
          completion(.success(tasks))
        }
      } catch {
        DispatchQueue.main.async {
          completion(.failure(error))
        }
      }
    }
    task.resume()
  }
}
