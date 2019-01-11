//
//  AlamofireClient.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/21/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireClient: RequestHandler {
  func makeRequest(_ request: URLRequest, completion: @escaping ((NetworkResponse<Data>) -> Void)) {
    Alamofire.request(request).responseData(completionHandler: { response in
      guard let _ = response.error else {
        //to get JSON return value
        if let data = response.data {
          //let JSON = result as! NSDictionary
          completion(.success(data))
        }
        return
      }
      completion(.failure(.forbiden))
    })
  }
}
