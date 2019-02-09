//
//  AppDelegate.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let injectInteractor = InjectInteractor()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        injectInteractor.register()

        let mainRouter = injectInteractor.get(MainRouter.self)
        mainRouter?.root(&window)

        return true
    }
}
