//
//  ChatService.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import Foundation

protocol ChatService: class {
    func fetchMessages(with completion: @escaping ([Message]) -> Void)
    func sendMessage(text: String, completion: @escaping (SendMessageResult) -> Void)
}
