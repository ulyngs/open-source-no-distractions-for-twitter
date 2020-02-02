//
//  ViewController.swift
//  "No Distractions" for YouTube
//
//  Created by Ulrik Lyngs on 18/05/2019.
//  Copyright © 2019 Ulrik Lyngs. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appNameLabel.stringValue = "'No Distractions' for Twitter";
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.ulriklyngs.tw-minimiser.tw-minimiser") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.

            }
        }
    }

}
