//
//  SceneDelegate.swift
//  UMC_MiniProject
//
//  Created by Jinyoung Leem on 6/17/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let channel = Channel(name: "택시 카풀 그룹 채팅방")
        let chatRoomViewController = ChatRoomViewController(channel: channel)
        let navigationController = UINavigationController(rootViewController: chatRoomViewController)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
