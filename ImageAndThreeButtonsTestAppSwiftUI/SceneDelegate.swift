//
//  SceneDelegate.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
        
    private let coordinator: Coordinator<MapRouter> = .init(startingRoute: .main)
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = coordinator.navigationController
        window?.makeKeyAndVisible()
        coordinator.start()
    }
}
