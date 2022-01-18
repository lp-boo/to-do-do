//
//  SceneDelegate.swift
//  ToDo`last vershion'
//
//  Created by Moby on 16.01.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        configureNavbar()
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        //        window?.rootViewController = UINavigationController(rootViewController: CollectionView(nibName: String(describing: CollectionView.self), bundle: nil))
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
    }
    
    func createTabbar() -> UITabBarController {
        let tapBarController = UITabBarController()
        
        let firstItem = UITabBarItem(title: "ToDo", image: UIImage(systemName: "person"), tag: 0)
        let first = ToDoVC(nibName: String(describing: ToDoVC.self), bundle: nil)
        first.tabBarItem = firstItem
        
        let secondItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape"), tag: 1)
        let second = SettingsVC(nibName: String(describing: SettingsVC.self), bundle: nil)
        second.tabBarItem = secondItem
        
        
        
        
        let controllers: [UINavigationController] = [UINavigationController(rootViewController: first),
                                                     UINavigationController(rootViewController: second)]
        
        
        tapBarController.viewControllers = controllers
        
        tapBarController.tabBar.tintColor = .black
        tapBarController.tabBar.backgroundColor = .white
        
        return tapBarController
        
    }
    
    
    func configureNavbar() {
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().backgroundColor = .white
        }
    }
}

