//
//  RequestHandler.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/21/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation

enum NetworkResponse<T> {
  case success(T)
  case failure(ConnectionError)
}

protocol RequestHandler {
  
  func makeRequest(_ request: URLRequest, completion: @escaping ((NetworkResponse<Data>) -> Void))
  
}
