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
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailField.delegate = self
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
    @IBAction func didTapSignIn(sender: UIButton) {
        //Sign in with credentials.
        let email = emailField.text
        let password = passwordField.text
        
        FIRAuth.auth()?.signInWithEmail(email!, password: password!) { (user, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            self.signedIn(user!)
        }
    }
    
    func signedIn(user: FIRUser?) {
        AppState.sharedInstance.displayName = user?.email
        AppState.sharedInstance.signedIn = true
        
        
        self.performSegueWithIdentifier("ShowFirstScreen",  sender: nil)

    }
    
    

}

