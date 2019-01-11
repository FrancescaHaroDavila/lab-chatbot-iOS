//
//  Answer.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/21/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation

struct Answer: Codable {
  
  var text: String = ""
  
  enum CodingKeys: String, CodingKey {
    case text
    
  }
  
}
