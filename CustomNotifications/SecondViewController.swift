//
//  SecondViewController.swift
//  CustomNotifications
//
//  Created by Андрей Сергиенко on 10/26/18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second screen"
        NotificationCenter.default.addObserver(self, selector: #selector(handleThirdScreenNotification), name: Helpers.thirdNotification, object: nil)
    }
    
    @objc private func handleThirdScreenNotification() {
        notificationLabel.text = "Third notification received"
        view.backgroundColor = .green
    }
    
    @IBAction private func sendEventPressed(_ sender: Any) {
        NotificationCenter.default.post(name: Helpers.secondNotification, object: nil)
    }
    
}
