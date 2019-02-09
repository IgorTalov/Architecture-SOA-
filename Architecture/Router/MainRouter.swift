//
//  MainRouter.swift
//  Architecture
//
//  Created by Игорь Талов on 10/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

class MainRouter {

    var viewController: UIViewController?

    init(viewController: UIViewController?) {
        self.viewController = viewController
    }

    func root(_ window: inout UIWindow?) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = viewController
    }
}
