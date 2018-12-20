//
//  ViewController.swift
//  lab-chatbot-iOS
//
//  Created by Francesca Valeria Haro Dávila on 12/18/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit
import Alamofire
import MessageKit
import PusherChatkit
import MessageInputBar

class ViewController: UIViewController {
    @IBOutlet weak var messageTextField: UITextField!
    var NetworkInstance = Network()
    @IBAction func sendButton(_ sender: UIButton) {
      NetworkInstance.sendMessageRequest(message: messageTextField.text!)
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

        


