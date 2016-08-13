//
//  AppState.swift
//  Microdent
//
//  Created by Dirk Hornung on 13/8/16.
//  Copyright © 2016 Emexs. All rights reserved.
//

import Foundation

class AppState: NSObject {
   
    static let sharedInstance = AppState()
    
    var signedIn = false
    var displayName: String?
}
