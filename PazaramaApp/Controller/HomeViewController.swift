//
//  ViewController.swift
//  PazaramaApp
//
//  Created by Şükrü Şimşek on 22.09.2023.
//

import UIKit
import Lottie

class HomeViewController: UIViewController {
//MARK: - Properties
    private let appBrandLogo = UIImageView()
    private let favoriteProductsButton = UIButton()
    private let productSearchTextField = UITextField()
    private let notificationsButton = UIButton()
    private let iconLeft = UIImage(systemName: "magnifyingglass")
    private let iconRight = UIImage(systemName: "camera.viewfinder")
    private let pazaramaWalletButton = UIButton()
    private let categoriFirstStackView = UIStackView()
    private let categoriSecondStackView = UIStackView()
    private let categoriThirdStackView = UIStackView()
    
    
    private let categoriesButton = UIButton()
    private let marketButton = UIButton()
    private let pazaramaHoliday = UIButton()
    private let pazaramaPet = UIButton()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
        pazaramaWalletButton.translatesAutoresizingMaskIntoConstraints = false
        pazaramaWalletButton.setImage(UIImage(named: "pazaramacuzdan"), for: .normal)
        
        //categoriesButton style
        categoriesButton.translatesAutoresizingMaskIntoConstraints = false
        categoriesButton.setImage(UIImage(named: "anasayfaTabIcon"), for: .normal)
        
        
        
        //categoriFirstStackView style
        categoriFirstStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriFirstStackView.spacing = 8
        categoriFirstStackView.axis = .horizontal
        categoriFirstStackView.backgroundColor = .black
        categoriFirstStackView.layer.cornerRadius = 10
        
        //categoriSecondStackView style
        categoriSecondStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriSecondStackView.spacing = 8
        categoriSecondStackView.axis = .horizontal
        categoriSecondStackView.backgroundColor = .brown
        categoriSecondStackView.layer.cornerRadius = 10
        //categoriThirdStackView style
        categoriThirdStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriThirdStackView.spacing = 8
        categoriThirdStackView.axis = .horizontal
        categoriThirdStackView.backgroundColor = .cyan
        categoriThirdStackView.layer.cornerRadius = 10
        
        
    }
    private func layout(){
        view.addSubview(productSearchTextField)
        view.addSubview(appBrandLogo)
        view.addSubview(pazaramaWalletButton)
        view.addSubview(notificationsButton)
        view.addSubview(favoriteProductsButton)
        view.addSubview(categoriFirstStackView)
        view.addSubview(categoriSecondStackView)
        view.addSubview(categoriThirdStackView)
        
        categoriFirstStackView.addArrangedSubview(categoriesButton)
        
        NSLayoutConstraint.activate([
            
            //favoriteProductsButton layout
            favoriteProductsButton.leadingAnchor.constraint(equalTo: notificationsButton.trailingAnchor, constant: 8),
            favoriteProductsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            favoriteProductsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            favoriteProductsButton.widthAnchor.constraint(equalToConstant: 24),
            favoriteProductsButton.heightAnchor.constraint(equalToConstant: 24),
            
            
            //notificationsButton layout
            notificationsButton.leadingAnchor.constraint(equalTo: pazaramaWalletButton.trailingAnchor, constant: 8),
            notificationsButton.trailingAnchor.constraint(equalTo: favoriteProductsButton.leadingAnchor, constant: -8),
            notificationsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            notificationsButton.widthAnchor.constraint(equalToConstant: 24),
            notificationsButton.heightAnchor.constraint(equalToConstant: 24),
            
            
            //appBrandLogo layout
            appBrandLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 12),
            appBrandLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            appBrandLogo.widthAnchor.constraint(equalToConstant: 160),
            appBrandLogo.heightAnchor.constraint(equalToConstant: 23),
            
            //productSearchTextField layout
            productSearchTextField.topAnchor.constraint(equalTo: appBrandLogo.bottomAnchor, constant: 8),
            productSearchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            productSearchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            productSearchTextField.heightAnchor.constraint(equalToConstant: 35),
            
            //pazaramaCuzdanButton layout
            pazaramaWalletButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 4),
            pazaramaWalletButton.bottomAnchor.constraint(equalTo: productSearchTextField.topAnchor, constant: -4),
            pazaramaWalletButton.widthAnchor.constraint(equalToConstant: 120),
            pazaramaWalletButton.heightAnchor.constraint(equalToConstant: 32),
            
            //categoriesButton layout
            categoriesButton.widthAnchor.constraint(equalToConstant: 50),
            categoriesButton.heightAnchor.constraint(equalToConstant: 50),
            
            //categoriFirstStackView layout
            categoriFirstStackView.topAnchor.constraint(equalTo: productSearchTextField.bottomAnchor, constant: 8),
            categoriFirstStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            categoriFirstStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            categoriFirstStackView.heightAnchor.constraint(equalToConstant: 120),
            
            //categoriSecondStackView layout
            categoriSecondStackView.topAnchor.constraint(equalTo: categoriFirstStackView.bottomAnchor, constant: 8),
            categoriSecondStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            categoriSecondStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            categoriSecondStackView.heightAnchor.constraint(equalToConstant: 120),
            
            //categoriThirdStackView layout
            categoriThirdStackView.topAnchor.constraint(equalTo: categoriSecondStackView.bottomAnchor, constant: 8),
            categoriThirdStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            categoriThirdStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            categoriThirdStackView.heightAnchor.constraint(equalToConstant: 120),
            
        ])
    }
    private func makeStackViewButtons(with image:UIImage?,and title:String, vc:UIViewController) -> UINavigationController {
        let navi = UINavigationController(rootViewController: vc)
        
        
        return navi
        }
    }

    
