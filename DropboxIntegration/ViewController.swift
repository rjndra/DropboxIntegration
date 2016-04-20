//
//  ViewController.swift
//  DropboxIntegration
//
//  Created by User on 4/20/16.
//  Copyright © 2016 User. All rights reserved.
//

import UIKit
import SwiftyDropbox

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
    
    @IBAction func linkToDropbox(sender: UIButton) {
        if(Dropbox.authorizedClient == nil ) {
            Dropbox.authorizeFromController(self)
        } else {
            print("User is already authorized!")
        }
        
    }

}

