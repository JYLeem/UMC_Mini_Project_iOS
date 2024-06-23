//
//  AppDelegate.swift
//  UMC_MiniProject
//
//  Created by Jinyoung Leem on 6/17/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let channel = Channel(name: "Test Channel")
        let chatRoomViewController = ChatRoomViewController(channel: channel)
        let navigationController = UINavigationController(rootViewController: chatRoomViewController)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
