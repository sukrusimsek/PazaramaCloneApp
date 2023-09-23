//
//  TabBarController.swift
//  TabBarController
//
//  Created by Şükrü Şimşek on 23.09.2023.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTaps()
        self.selectedIndex = 0
        self.tabBar.tintColor = .systemBlue
        self.tabBar.barTintColor = .opaqueSeparator
        self.tabBar.unselectedItemTintColor = .lightGray
        self.delegate = self
    }
    
    //MARK: - Tab Setup
    private func setupTaps() {
        
        let home = self.createNav(with: "Ana Sayfa", and: UIImage(systemName: "house"), vc: HomeViewController())
        let categories = self.createNav(with: "Kategoriler", and: UIImage(systemName: "list.number"), vc: CategoriesController())
        let campaign = self.createNav(with: "Kampanyalar", and: UIImage(systemName: "percent"), vc: CampaignController())
        let wallet = self.createNav(with: "Cüzdanım", and: UIImage(systemName: "wallet.pass"), vc: WalletController())
        let account = self.createNav(with: "Hesabım", and: UIImage(systemName: "person.crop.circle"), vc: AccountController())
 

        
        self.setViewControllers([home, categories, campaign, wallet, account], animated: true)
    }
    private func createNav(with title:String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        //nav.viewControllers.first?.navigationItem.title = title + "Controller"
        //nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        nav.isNavigationBarHidden = true

        return nav
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if self.selectedIndex == 2 {
            let alertForCampaign = UIAlertController(title: "Büyük İndirim", message: "Size özel indirimleri görmek için tıklayınız", preferredStyle: .alert)
            alertForCampaign.addAction(UIAlertAction(title: "Tamam", style: .default))
            self.present(alertForCampaign, animated: true)
        }
    }
    
}