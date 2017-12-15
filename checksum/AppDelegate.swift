//
//  AppDelegate.swift
//  checksum
//
//  Created by Sidhant Gandhi on 12/14/17.
//  Copyright © 2017 newnoetic. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.setupStatusBarItem()
        popover.contentViewController = ChecksumViewController.freshController()
    }

    func setupStatusBarItem() {
        if let button = self.statusItem.button {
            button.image = NSImage(named:NSImage.Name("checksum"))
            button.action = #selector(togglePopover(_:))
        }
    }
    
    @objc func togglePopover(_ sender: Any?) {
        if popover.isShown {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
    
    func showPopover(sender: Any?) {
        if let button = statusItem.button {
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    func closePopover(sender: Any?) {
        popover.performClose(sender)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

