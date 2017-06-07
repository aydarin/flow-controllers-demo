//
//  AppDelegate.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private var flowController: MainFlowController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let navigationViewController = UINavigationController()
        window?.rootViewController = navigationViewController
        
        flowController = MainFlowController(navigationController: navigationViewController)
        flowController?.start()
        
        return true
    }


}

