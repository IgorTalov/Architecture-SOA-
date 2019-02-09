//
//  InjectInteractor.swift
//  Architecture
//
//  Created by Игорь Талов on 10/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import Foundation
import Swinject

class InjectInteractor {

    private let container = Container()

    func get<T>(_ type: T.Type) -> T? {
        return container.resolve(type)
    }

    func register() {
        container.register(ChatViewController.self) { _ -> ChatViewController in
            let item = ChatViewController()
            return item
        }

        container.register(MainRouter.self) { resolver -> MainRouter in
            let item = MainRouter(viewController: resolver.resolve(ChatViewController.self))
            return item
        }
    }
}
