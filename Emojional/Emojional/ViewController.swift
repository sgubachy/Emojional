//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 8/8/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😔": "disappointed", "🤠": "cowboy"]
    
    var customMessages = ["disappointed" : "me too", "disappointed" : "sad yeehaw :(", "disappointed" : "everybody makes mistakes, everybody has those days", "cowboy" : "yeehaw!", "cowboy" : "you got this!", "cowboy" : "you're doing great!"]
    
    @IBAction func showMessage(sender:
        UIButton) {
        let selectedEmotion =
        sender.titleLabel!.text
        let alertController = UIAlertController(title: "\(emojis[selectedEmotion!]!)", message: "yeehaw!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
//    @IBAction func disappointed(_ sender: Any) {
//        let alertController = UIAlertController(title: "you good?", message: "me too.", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style:
//            UIAlertAction.Style.default, handler: nil))
//
//        present(alertController, animated: true, completion: nil)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

