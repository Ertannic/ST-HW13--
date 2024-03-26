//
//  SceneDelegate.swift
//  ST-HW13- Саралаев Ержан
//
//  Created by Ertannic Saralay on 26.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let tabBarColor = UIColor { traitCollection -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.95) // Прозрачный цвет для темной темы
            } else {
                return UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.95) // Прозрачный цвет для светлой темы
            }
        }

        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            appearance.backgroundColor = tabBarColor
            appearance.shadowImage = nil
            appearance.shadowColor = nil
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = UITabBar.appearance().standardAppearance
        }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = TabBarController()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}

