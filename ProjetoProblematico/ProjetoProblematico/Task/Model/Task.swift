//
//  Task.swift
//  ProjetoProblematico
//
//  Created by Caio Fabrini on 25/09/24.
//

import Foundation

struct Task: Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
