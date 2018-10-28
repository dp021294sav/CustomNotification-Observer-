//
//  ThirdViewController.swift
//  CustomNotifications
//
//  Created by Андрей Сергиенко on 10/26/18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet private weak var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third screen"
    }

    @IBAction func sendEventPressed(_ sender: Any) {
        let name = NSNotification.Name(rawValue: "Third notification received")
        NotificationCenter.default.post(name: name, object: nil)
    }
    
}
