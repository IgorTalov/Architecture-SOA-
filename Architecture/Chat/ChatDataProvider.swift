//
//  ChatDataProvider.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import Foundation

protocol ChatDataProvidable {
    func numberOfSections() -> Int
    func numberOfRows(in section: Int) -> Int
    func set(messages: [[Message]])
    func getMessage(by indexPath: IndexPath) -> Message
}

class ChatDataProvider: ChatDataProvidable {
    func getMessage(by indexPath: IndexPath) -> Message {
        return models[indexPath.section][indexPath.row]
    }

    func numberOfSections() -> Int {
        return models.count
    }

    func numberOfRows(in section: Int) -> Int {
        return models[section].count
    }

    func set(messages: [[Message]]) {
        self.models = messages
    }

    typealias Model = Message
    private var models: [[Model]] = []
}
