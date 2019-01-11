//
//  ChatManager.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/21/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ChatManager {
  
  private var handler: RequestHandler!
  
  private init() {
    // DO NOTHING
  }
  
  init(requestHandler: RequestHandler) {
    self.handler = requestHandler
  }
  
  func botAnswerForMessage(_ message: String, completion: @escaping ((String) -> Void)) {
    var request = URLRequest(url: URL(string: "http://chabotbe.mybluemix.net/dialog_mobile/conversation")!)
    request.httpMethod = "POST"
    request.httpBody = try? JSONSerialization.data(withJSONObject: ["message": message], options: .prettyPrinted)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    handler.makeRequest(request, completion: { result in
      switch result {
      case .success(let data):
        
        guard let json = try? JSON(data: data) else {
          return
        }
        
        print(json["watson"]["render"][0]["text"].stringValue)
        print(json["watson"]["render"][1]["data"][0]["label"].stringValue)
        print(json["watson"]["render"][1]["data"][1]["label"].stringValue)
        
        completion(json["watson"]["render"][0]["text"].stringValue)
       
      case .failure(let error):
        print("uy")
      }
    })
  }
  
}
