//
//  ChatViewController.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!

    private lazy var controller: ChatController = ChatController(self)

    override func viewDidLoad() {
        super.viewDidLoad()
        controller.viewDidLoad()
    }

    @IBAction private func sendButtonClicked() {
        let text = textField.text
        controller.sendButtonClicked(with: text)
    }

    func showAlert(with title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
}
