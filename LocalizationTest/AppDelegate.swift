//
//  AppDelegate.swift
//  LocalizationTest
//
//  Created by Marc Respass on 2023-11-17.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    let mainVC = MainVC()
//    let mainVC = Main2VC()
    var window: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.window = NSWindow(contentViewController: self.mainVC)
        self.window?.title = "\(String(describing: mainVC.self))"
        self.window?.makeKeyAndOrderFront(self)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {        
        return true
    }
}
