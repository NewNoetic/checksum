//
//  ChecksumViewController.swift
//  checksum
//
//  Created by Sidhant Gandhi on 12/14/17.
//  Copyright © 2017 newnoetic. All rights reserved.
//

import Cocoa

class ChecksumViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
    }
 
    // MARK: Storyboard instantiation
    static func freshController() -> ChecksumViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "ChecksumViewController")
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? ChecksumViewController else {
            fatalError("ChecksumViewController not found in storyboard")
        }
        return viewcontroller
    }
}
