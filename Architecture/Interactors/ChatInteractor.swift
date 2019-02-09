//
//  ChatInteractor.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import Foundation

class ChatInteractor {

    private let chatService: ChatService = ChatServiceImplementation()
    var dataProvider: ChatDataProvidable?

    init(dataProvider: ChatDataProvider) {
        self.dataProvider = dataProvider
    }

    func send(text: String) {
        chatService.sendMessage(text: text) { result in
            print("Message has been sended with result: \(result)")
        }
    }

    func fetchMessages() {
        chatService.fetchMessages { messages in
            self.dataProvider?.set(messages: self.split(messages: messages))
        }
    }

    func split(messages: [Message]) -> [[Message]] {
        var splittedData: [[Message]] = []
        for message in messages {
            splittedData.append([message])
        }
        return splittedData
    }
}
