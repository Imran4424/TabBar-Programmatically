//
//  AppDelegate.swift
//  TabBarProgrammatically
//
//  Created by Shah Md Imran Hossain on 4/1/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemGreen
        
        window?.rootViewController = ViewController()
        
        return true
    }
}
