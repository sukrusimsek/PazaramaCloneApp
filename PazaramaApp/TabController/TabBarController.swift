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
        //self.tabBar.tintColor = .systemBlue
        //self.tabBar.barTintColor = .opaqueSeparator
        self.tabBar.unselectedItemTintColor = .lightGray
        self.delegate = self
        
    }
    
    //MARK: - Tab Setup
    private func setupTaps() {
        
        
        
        
        let home = self.createNav(with: "Ana Sayfa", and: UIImage(systemName: "house"), vc: HomeViewController())
        let categories = self.createNav(with: "Kategoriler", and: UIImage(systemName: "square.stack.3d.down.forward"), vc: CategoriesController())
        let campaign = self.createNav(with: "Fırsatlar", and: UIImage(systemName: "flame"), vc: CampaignController())
        let wallet = self.createNav(with: "Cüzdanım", and: UIImage(systemName: "creditcard"), vc: WalletController())
        let account = self.createNav(with: "Hesabım", and: UIImage(systemName: "person.fill"), vc: AccountController())
 
        

        
        self.setViewControllers([home, categories, campaign, wallet, account], animated: true)
    }
    private func createNav(with title:String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
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
