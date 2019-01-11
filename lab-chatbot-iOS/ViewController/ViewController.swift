//
//  ViewController.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/18/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit
import Alamofire
import HPGrowingTextView
import SwiftyJSON

class ViewController: UIViewController, HPGrowingTextViewDelegate, UITableViewDelegate {
  
  @IBOutlet weak var messageTextView: HPGrowingTextView!
  
  var NetworkInstance = Network()
  var chatManager: ChatManager?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    chatManager = ChatManager(requestHandler: AlamofireClient())
  }
  
  @IBAction func sendButton(_ sender: UIButton) {
    chatManager?.botAnswerForMessage(messageTextView.text, completion: { answerText in
      print(answerText)
    })
  }
  	

  
}

        


