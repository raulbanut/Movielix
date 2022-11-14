//
//  MainTabBarViewController.swift
//  Movielix
//
//  Created by Raul Banut on 10.11.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let transparentAppearence = UITabBarAppearance()
        
        transparentAppearence.configureWithTransparentBackground()
        UITabBar.appearance().standardAppearance = transparentAppearence
    
        let viewController1 = UINavigationController(rootViewController: HomeViewController())
        let viewController2 = UINavigationController(rootViewController: UpcomingViewController())
        let viewController3 = UINavigationController(rootViewController: SearchViewController())
        let viewController4 = UINavigationController(rootViewController: DownloadsViewController())
        
        viewController1.tabBarItem.image = UIImage(systemName: "house")
        viewController2.tabBarItem.image = UIImage(systemName: "play.circle")
        viewController3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        viewController4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        viewController1.title = "Home"
        viewController2.title = "Coming Soon"
        viewController3.title = "Top Searches"
        viewController4.title = "Downloads"
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemBackground
        
        setViewControllers(
            [viewController1, viewController2, viewController3, viewController4],
            animated: true
        )
    }
}

