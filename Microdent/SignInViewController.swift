//
//  ViewController.swift
//  Microdent
//
//  Created by Dirk Hornung on 12/8/16.
//  Copyright © 2016 Emexs. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        testLabel.text = textField.text
    }
    
    
    // MARK: Actions
    @IBAction func login(sender: UIButton) {
        testLabel.text = "Default Text"
        performSegueWithIdentifier("ShowFirstScreen", sender: sender)
    }

}

