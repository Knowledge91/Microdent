//
//  PatientDirectoryViewController.swift
//  Microdent
//
//  Created by Dirk Hornung on 13/8/16.
//  Copyright © 2016 Emexs. All rights reserved.
//

import UIKit
import Firebase
import SWRevealViewController

class PatientDirectoryViewController: UIViewController {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
