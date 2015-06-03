//
//  ViewController.swift
//  Postcard
//
//  Created by MacTV on 5/13/15.
//  Copyright (c) 2015 SpaceCoyote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMsgTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPress(sender: UIButton) {
        //All about the text in messageLable
        messageLabel.hidden = false
        messageLabel.text   = enterMsgTextField.text
        messageLabel.textColor = UIColor.purpleColor()
        
        //The text in the message
        enterMsgTextField.text = ""
        enterMsgTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent Y'all!", forState: UIControlState.Normal)
    }

}

