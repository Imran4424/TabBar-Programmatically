//
//  MainViewController.swift
//  TabBarProgrammatically
//
//  Created by Shah Md Imran Hossain on 4/1/23.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let homeVC = HomeViewController()
        let wifiVC = WifiViewController()
        let weatherVC = WeatherViewController()
        
        homeVC.setTabBarImage(imageName: "house.fill", title: "Home")
        wifiVC.setTabBarImage(imageName: "wifi", title: "Wifi")
        weatherVC.setTabBarImage(imageName: "sun.haze.fill", title: "Weather")
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let wifiNC = UINavigationController(rootViewController: wifiVC)
        let weatherNC = UINavigationController(rootViewController: weatherVC)
        
        homeNC.navigationBar.barTintColor = .systemTeal
        hideNavigationBarLine(homeNC.navigationBar)
        
        let tabBarList = [homeNC, wifiNC, weatherNC]
        viewControllers = tabBarList
    }
    
    private func setupTabBar() {
        tabBar.tintColor = .systemTeal
        tabBar.isTranslucent = false
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let image = UIImage()
        navigationBar.shadowImage = image
        navigationBar.setBackgroundImage(image, for: .default)
        navigationBar.isTranslucent = false
    }
}

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
    }
}

class WifiViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
    }
}

class WeatherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
    }
}


// utils
extension UIViewController {
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
