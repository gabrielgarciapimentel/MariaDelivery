//
//  AppDelegate.swift
//  MariaDelivery
//
//  Created by Gabriel Garcia Pimentel Mendonca on 29/08/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    var navigationVC: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        navigationVC = UINavigationController(rootViewController: SplashViewController())
        
        window?.rootViewController = navigationVC
        
        return true
    }
}
