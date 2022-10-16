//
//  TabBarViewController.swift
//  instagramClone
//
//  Created by Iskhak Zhutanov on 16/10/22.
//

import UIKit
import SnapKit

class TabBarViewController: UITabBarController {
    
    enum Fonts: String {
        case mainLogoRegular = "FONTSPRINGDEMO-BlueVinylRegular"
        case mainLogoBold = "FONTSPRINGDEMO-BlueVinylBold"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }

    func createNavController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [createNavController(for: HomeViewController(), title: "", image: UIImage(systemName: "house")!), createNavController(for: ExploreViewController(), title: "", image: UIImage(systemName: "magnifyingglass")!), createNavController(for: NewPostViewController(), title: "", image: UIImage(systemName: "plus.app")!), createNavController(for: NotificationsViewController(), title: "", image: UIImage(systemName: "heart")!), createNavController(for: ProfileViewController(), title: "", image: UIImage(systemName: "person.fill")!)]
    }

}
