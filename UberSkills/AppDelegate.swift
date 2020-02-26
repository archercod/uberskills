//
//  AppDelegate.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = LoginController()
        
        return true
    }

}

