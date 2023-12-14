//
//  MainVC.swift
//  LocalizationTest
//
//  Created by Marc Respass on 2023-11-17.
//

import Cocoa

class MainVC: NSViewController {
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
        let many = 3
        let one = 1

        let string1 = String(localized: "There are \(one) strawberries")
        self.localizedField1.stringValue = string1

        let string2 = "There are \(many) strawberries"
        self.localizedField2.stringValue = string2

        let string3 = "There are \(many) strawberries and \(many) blueberries"
        self.localizedField3.stringValue = string3

        let string4 = "There are \(one) strawberries and \(one) blueberries"
        self.localizedField4.stringValue = string4

        let string5 = "There are \(one) strawberries and \(many) blueberries"
        self.localizedField5.stringValue = string5
    }

}
