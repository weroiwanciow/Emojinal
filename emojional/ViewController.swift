//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🤯" : "Stressed?", "🤔" : "Contemplating?" ]
    
    let customMessages = ["Stressed?" : ["Take A Water Break!", "Read A Good Book", "Relax", "Jot down new ideas"], "Contemplating?" : ["Go on Tumblr to get writing tips", "Create a new draft", "Re-read your writing", "Discuss your ideas with friends!"]]
        //
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let number = Int.random(in: 0...3)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
       
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "Done.", style: UIAlertAction.Style.default, handler: nil))
   
             present(alertController, animated: true, completion: nil)
        }

    
        
       

        

    }



