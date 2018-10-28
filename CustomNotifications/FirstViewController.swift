//
//  FirstViewController.swift
//  CustomNotifications
//
//  Created by Андрей Сергиенко on 10/26/18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First screen"
        NotificationCenter.default.addObserver(self, selector: #selector(handleSecondScreenNotification), name: Helpers.secondNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleThirdScreenNotification), name: Helpers.thirdNotification, object: nil)
    }
    
    @objc private func handleSecondScreenNotification() {
        notificationLabel.text = "Second notification received"
        view.backgroundColor = .red
    }
    
    @objc private func handleThirdScreenNotification() {
        notificationLabel.text = "Third notification received"
        view.backgroundColor = .green
    }
    
}
