//
//  TabBarController.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    public let screen01 = UINavigationController(rootViewController: HomeController())
    public let screen02 = UINavigationController(rootViewController: ConfigsController())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTabBar()        
    }
        

    func configTabBar() {
        
        self.setViewControllers([screen01, screen02], animated: true)
        
        tabBar.backgroundColor = .secondarySystemBackground
        guard let item = tabBar.items else {return}
        
        item[0].title = "Home"
        item[0].image = UIImage(systemName: "house")
        item[1].title = "Configurações"
        item[1].image = UIImage(systemName: "gear")
    }

}
