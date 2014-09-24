//
//  ViewController.swift
//  PostCard
//
//  Created by Joshua Jodoin on 2014-09-13.
//  Copyright (c) 2014 KatsConnection. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var MessageLabel: UILabel!
                            
    @IBOutlet weak var EnterNameTextFeild: UITextField!
    
    @IBOutlet weak var EnterMessageFeild: UITextField!
    
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButtonPressed(sender: UIButton) {
        // code will evaluate when we pressed the button
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageFeild.text
        EnterMessageFeild.text = ""
        // this above one resets the text after you push the button
        EnterMessageFeild.resignFirstResponder()
        // This gets rid of the key board after each enter
        MessageLabel.textColor = UIColor.redColor()
        // This simply changes the colour using built in functions
        
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        NameLabel.hidden = false
        NameLabel.text = EnterNameTextFeild.text
       
        EnterNameTextFeild.text = ""
        EnterNameTextFeild.resignFirstResponder()
        EnterNameTextFeild.textColor = UIColor.greenColor()
        // I don't understand why this text colour does not work? 
        
    }

}

