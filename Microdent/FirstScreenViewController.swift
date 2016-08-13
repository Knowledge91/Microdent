//
//  FirstScreen.swift
//  Microdent
//
//  Created by Dirk Hornung on 12/8/16.
//  Copyright © 2016 Emexs. All rights reserved.
//

import UIKit
import Firebase

class FirstScreenViewController: UIViewController {

    // MARK: Actions
    @IBAction func didTapSignOut(sender: UIButton) {
        let firebaseAuth = FIRAuth.auth()
        do {
            try firebaseAuth?.signOut()
            AppState.sharedInstance.signedIn = false
            dismissViewControllerAnimated(true, completion: nil)
        } catch let signOutError as NSError {
            print("Error signing out: \(signOutError)")
        }
    }
}
