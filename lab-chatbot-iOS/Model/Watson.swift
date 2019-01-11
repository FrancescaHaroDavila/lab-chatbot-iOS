//
//  AnswerContainer.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/21/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation

struct Watson: Codable {
  
  struct Render: Codable {
    
    struct Answer: Codable {
      
      enum CodingKeys: String, CodingKey {
        case text
      }
      
      let text: String = ""
      
    }
    
    enum CodingKeys: String, CodingKey {
      case answer
    }
    
    let answer: [Answer]
  }
  
  
  enum CodingKeys: String, CodingKey {
    case render
  }
  
  let render: Render
}
