//
//  APIClient.swift
//  TudoSobreCamadaDeNetwork
//
//  Created by Caio Fabrini on 16/09/24.
//

import Foundation

class APIClient: HTTPClient {

  static let shared = APIClient()

  private var session: URLSession
  private var baseURL: String
  private var requestBuilder: RequestBuilder
  private var decoder: JSONDecoder
  private var timeout: TimeInterval

  init(session: URLSession = URLSession.shared,
       baseURL: String? = nil,
       requestBuilder: RequestBuilder = DefaultRequestBuilder(),
       decoder: JSONDecoder = JSONDecoder(),
       timeout: TimeInterval = 6) {
    self.session = session
    self.requestBuilder = requestBuilder
    self.decoder = decoder
    self.timeout = timeout

    if let baseURL {
      self.baseURL = baseURL
    } else if let baseURLProject = Bundle.main.infoDictionary?["BaseURL"] as? String {
      self.baseURL = baseURLProject
    } else {
      self.baseURL = ""
    }
  }

  func request<T>(request: APIRequest, decodeType: T.Type = EmptyResponse.self, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {

    guard let request = requestBuilder.buildRequest(request: request, baseURL: baseURL, timeout: timeout) else {
      completion(.failure(.invalidURL(url: baseURL + request.url)))
      return
    }

    let task = session.dataTask(with: request) { [weak self] data, response, error in
      DispatchQueue.main.async {

        guard let self else {
          completion(.failure(.networkFailure(NSError(domain: "APIClient foi desalocada da memoria", code: -1))))
          return
        }

        if let error {
          completion(.failure(.networkFailure(error)))
          return
        }

        guard let httpResponse = response as? HTTPURLResponse  else {
          completion(.failure(.invalidResponse))
          return
        }

        guard (200...299).contains(httpResponse.statusCode) else {
          completion(.failure(.statusCode(code: httpResponse.statusCode)))
          return
        }

        if decodeType == EmptyResponse.self {
          if let emptyResponse = EmptyResponse() as? T {
            completion(.success(emptyResponse))
          } else {
            completion(.failure(.decodingError(NSError(domain: "EmptyResponse error", code: -1))))
          }
          return
        }

        guard let data else {
          completion(.failure(.noData))
          return
        }

        do {
          let object = try self.decoder.decode(decodeType, from: data)
          completion(.success(object))
        } catch {
          completion(.failure(.decodingError(error)))
        }
      }
    }
    task.resume()
  }
}
