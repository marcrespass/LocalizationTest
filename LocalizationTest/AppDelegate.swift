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
    var window: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.window = NSWindow(contentViewController: self.mainVC)
        self.window?.title = "Localization Test"
        self.window?.makeKeyAndOrderFront(self)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {        
        return true
    }
}
