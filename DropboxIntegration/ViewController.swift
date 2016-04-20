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
        
        if let client = Dropbox.authorizedClient {
            client.users.getCurrentAccount().response({ (response, error) in
                print("***  Get Current User ***")
                if let account = response {
                    print("Hello \(account.name.givenName)!")
                } else {
                    print(error!)
                }
            })
        }
    }
    
    @IBAction func linkToDropbox(sender: UIButton) {
        if(Dropbox.authorizedClient == nil ) {
            Dropbox.authorizeFromController(self)
        } else {
            print("User is already authorized!")
        }
    }
    
}

