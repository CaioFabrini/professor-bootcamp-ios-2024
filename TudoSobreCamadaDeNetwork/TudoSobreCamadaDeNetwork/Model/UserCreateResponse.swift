//
//  UserCreateResponse.swift
//  TudoSobreCamadaDeNetwork
//
//  Created by Caio Fabrini on 12/09/24.
//

import Foundation

// MARK: - UserCreateResponse
struct UserCreateResponse: Codable {
    var name, job, id, createdAt: String?
}
