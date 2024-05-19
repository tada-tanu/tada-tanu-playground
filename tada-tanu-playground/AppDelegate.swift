//
//  AppDelegate.swift
//  tada-tanu-playground
//
//  Created by 多田悠二 on 2024/05/18.
//

import AppCore
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        self.window = window
        window.rootViewController = MainViewController(dependency: ())
        window.makeKeyAndVisible()
        return true
    }
}

