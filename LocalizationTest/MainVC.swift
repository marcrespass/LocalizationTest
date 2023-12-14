//
//  MainVC.swift
//  LocalizationTest
//
//  Created by Marc Respass on 2023-11-17.
//

import Cocoa

class MainVC: NSViewController {
    @IBOutlet weak var titleField: NSTextField!
    @IBOutlet weak var localizedField1: NSTextField!
    @IBOutlet weak var localizedField2: NSTextField!
    @IBOutlet weak var localizedField3: NSTextField!
    @IBOutlet weak var localizedField4: NSTextField!
    @IBOutlet weak var localizedField5: NSTextField!

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable) required init?(coder aDecoder: NSCoder) {
        fatalError("unavailable use init() instead")
    }

    override var nibName: NSNib.Name? {
        let name = NSNib.Name("MainVC")
        return name
    }

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.titleField.stringValue = "fruit1 and fruit2" // DOES NOT WORK
//        self.titleField.stringValue = String(localized: "fruit1 and fruit2") // Works. Seems more swifty
        self.titleField.stringValue = NSLocalizedString("fruit1 and fruit2", comment: "") // Seems more Objective-C

        let many = 3
        let one = 1

        let string1 = String(localized: "There are \(one) fruit1")
        self.localizedField1.stringValue = string1

        let string2 = String(localized: "There are \(many) fruit1")
        self.localizedField2.stringValue = string2

        let string3 = String(localized: "There are \(many) fruit1 and \(many) fruit2")
        self.localizedField3.stringValue = string3

        let string4 = String(localized: "There are \(one) fruit1 and \(one) fruit2")
        self.localizedField4.stringValue = string4

        let string5 = String(localized: "There are \(one) fruit1 and \(many) fruit2")
        self.localizedField5.stringValue = string5
    }

}
