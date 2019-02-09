//
//  ChatController.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

class ChatController: NSObject {
    weak var viewController: ChatViewController?
    private let dataProvider = ChatDataProvider()
    private lazy var dataSource = ChatDataSource(dataProvider: dataProvider)
    private lazy var chatInteractor = ChatInteractor(dataProvider: dataProvider)

    init(_ viewController: ChatViewController) {
        self.viewController = viewController
    }

    var tableView: UITableView? {
        return viewController?.tableView
    }

    func delegating() {
        tableView?.dataSource = dataSource
        tableView?.delegate = self
    }

    func sendButtonClicked(with text: String?) {
        guard let text = text, !text.isEmpty else {
            viewController?.showAlert(with: "Error", message: "Text field is Empty")
            return
        }
        chatInteractor.send(text: text)
        reload()
    }

    private func reload() {
        chatInteractor.fetchMessages()
        tableView?.reloadData()
        viewController?.textField.text = nil
    }

    func viewDidLoad() {
        delegating()
        reload()
    }
}

extension ChatController: UITableViewDelegate { }
