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
    
    let customMessages = ["disappointed" : ["me too", "it's okay", "everybody makes mistakes, everybody has those days"], "cowboy" : ["yeehaw!", "you got this!", "you're doing great!"]]
    
    @IBAction func showMessage(sender:
        UIButton) {
        let selectedEmotion =
        sender.titleLabel!.text
        let random = Int.random(in: 0 ..< 3)
        let emojiMessages = customMessages[emojis[selectedEmotion!]!]?[random]
        
        let alertController = UIAlertController(title: "\(emojis[selectedEmotion!]!)", message: "\(emojiMessages!)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

