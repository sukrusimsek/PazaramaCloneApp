//
//  ViewController.swift
//  PazaramaApp
//
//  Created by Şükrü Şimşek on 22.09.2023.
//

import UIKit

class HomeViewController: UIViewController {
//MARK: - Properties
    private let appBrandLogo = UIImageView()
    private let favoriteProductsButton = UIButton()
    private let productSearchTextField = UITextField()
    private let notificationsButton = UIButton()
    private let iconLeft = UIImage(systemName: "magnifyingglass")
    private let iconRight = UIImage(systemName: "camera.viewfinder")
    private let pazaramaCuzdanButton = UIButton()
    
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }


}
//MARK: - Helpers
extension HomeViewController{
    private func style(){
        //appBrandLogo style
        appBrandLogo.translatesAutoresizingMaskIntoConstraints = false
        appBrandLogo.image = UIImage(named: "logopng.png")
        
        
        //productSearchTextField style
        productSearchTextField.translatesAutoresizingMaskIntoConstraints = false
        productSearchTextField.placeholder = "Marka, ürün veya hizmet arayın"
        productSearchTextField.borderStyle = .roundedRect
        productSearchTextField.textColor = .systemGray
        productSearchTextField.font = .systemFont(ofSize: 13)
        
        //searchLeftImageView style
        let searchLeftImageView = UIImageView(frame: CGRect(x: 8.0, y: 6.0, width: 24.0, height: 24.0))
        searchLeftImageView.image = iconLeft
        searchLeftImageView.contentMode = .scaleAspectFit
        searchLeftImageView.tintColor = .darkGray
        productSearchTextField.leftViewMode = .always
        productSearchTextField.isOpaque = true
        productSearchTextField.addSubview(searchLeftImageView)
        
        //searchPlaceHolder padding style
        let paddingView = UIView(frame: CGRectMake(0, 0, 30, self.productSearchTextField.frame.height))
        productSearchTextField.leftView = paddingView
        productSearchTextField.leftViewMode = UITextField.ViewMode.always
        
        //searchRightImageView style
        let searchRightImageView = UIImageView(frame: CGRect(x: 341.0, y: 6.0, width: 24.0, height: 24.0))
        searchRightImageView.image = iconRight
        searchRightImageView.contentMode = .scaleAspectFit
        searchRightImageView.tintColor = .darkGray
        productSearchTextField.leftViewMode = .always
        productSearchTextField.isOpaque = true
        productSearchTextField.addSubview(searchRightImageView)
        
        //favoriteProducts style
        favoriteProductsButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteProductsButton.setImage(UIImage(named: "favoriteProductsIcon"), for: .normal)
        //notificationsButton style
        notificationsButton.translatesAutoresizingMaskIntoConstraints = false
        notificationsButton.setImage(UIImage(named: "notificationHomeScreen"), for: .normal)
        
        //pazaramaCuzdan style
        pazaramaCuzdanButton.translatesAutoresizingMaskIntoConstraints = false
        pazaramaCuzdanButton.setImage(UIImage(named: "pazaramacuzdan"), for: .normal)
        
       
    
        
    }
    private func layout(){
        view.addSubview(productSearchTextField)
        view.addSubview(appBrandLogo)
        view.addSubview(pazaramaCuzdanButton)
        view.addSubview(notificationsButton)
        view.addSubview(favoriteProductsButton)
        
       
        NSLayoutConstraint.activate([
            
            
            //favoriteProductsButton layout
            favoriteProductsButton.leadingAnchor.constraint(equalTo: notificationsButton.trailingAnchor, constant: 8),
            favoriteProductsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            favoriteProductsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            favoriteProductsButton.widthAnchor.constraint(equalToConstant: 24),
            favoriteProductsButton.heightAnchor.constraint(equalToConstant: 24),
            
            
            //notificationsButton layout
            notificationsButton.leadingAnchor.constraint(equalTo: pazaramaCuzdanButton.trailingAnchor, constant: 8),
            notificationsButton.trailingAnchor.constraint(equalTo: favoriteProductsButton.leadingAnchor, constant: -8),
            notificationsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            notificationsButton.widthAnchor.constraint(equalToConstant: 24),
            notificationsButton.heightAnchor.constraint(equalToConstant: 24),
            
            
            //appBrandLogo layout
            appBrandLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 12),
            appBrandLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            appBrandLogo.widthAnchor.constraint(equalToConstant: 175),
            appBrandLogo.heightAnchor.constraint(equalToConstant: 35), 
            
            //productSearchTextField layout
            productSearchTextField.topAnchor.constraint(equalTo: appBrandLogo.bottomAnchor, constant: 8),
            productSearchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            productSearchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            productSearchTextField.heightAnchor.constraint(equalToConstant: 35),
            
            //pazaramaCuzdanButton layout
            pazaramaCuzdanButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            pazaramaCuzdanButton.bottomAnchor.constraint(equalTo: productSearchTextField.topAnchor, constant: -8),
            pazaramaCuzdanButton.widthAnchor.constraint(equalToConstant: 120),
            
  
            
            
        ])
    }
    
}
