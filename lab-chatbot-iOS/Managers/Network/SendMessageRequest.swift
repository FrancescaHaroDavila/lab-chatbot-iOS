//
//  SendMessageRequest.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/20/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import Alamofire

//{}

enum ConnectionError: Error {
  case forbiden
}

public class Network {
  
  func sendMessageRequest(message: String, completion: @escaping ((NetworkResponse<Data>) -> Void)) {
    
    let url = "http://chabotbe.mybluemix.net/dialog_mobile/conversation"
    let parameters = ["message": message]
    
    Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
      .responseJSON { response in
        print(response)
        
        guard let _ = response.error else {
          //to get JSON return value
          if let data = response.data {
            //let JSON = result as! NSDictionary
            completion(.success(data))
          }
          return
        }
        
        completion(.failure(.forbiden))
        
    }
    
  }

  
}
