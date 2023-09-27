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
    private let categoriesView = UIView()
    private let marketView = UIView()
    private let pazaramaHolidayView = UIView()
    private let pazaramaPetView = UIView()
    private let categoriesButton = UIButton()
    private let marketButton = UIButton()
    private let pazaramaHolidayButton = UIButton()
    private let pazaramaPetButton = UIButton()
    private let categoriesLabelView = UIView()
    private let marketLabelView = UIView()
    private let holidayLabelView = UIView()
    private let petLabelView = UIView()
    private let categoriesLabel = UITextView()
    private let marketLabel = UITextView()
    private let holidayLabel = UITextView()
    private let petLabel = UITextView()
    
    private let bestSellerView = UIView()
    private let bestFavoritesView = UIView()
    private let ekstreIndirimiView = UIView()
    private let superCekilisView = UIView()
    
    private let bestSellerButton = UIButton()
    private let bestFavoritesButton = UIButton()
    private let ekstreIndirimiButton = UIButton()
    private let superCekilisButton = UIButton()
    
    private let bestSellerLabelView = UIView()
    private let bestFavoritesLabelView = UIView()
    private let ekstreIndirimiLabelView = UIView()
    private let superCekilisLabelView = UIView()
    
    private let bestSellerLabel = UITextView()
    private let bestFavoritesLabel = UITextView()
    private let ekstreIndirimiLabel = UITextView()
    private let superCekilisLabel = UITextView()
    
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
        
        
        //categoriFirstStackView style
        categoriFirstStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriFirstStackView.spacing = 8
        categoriFirstStackView.axis = .horizontal
        //categoriFirstStackView.backgroundColor = .white
        categoriFirstStackView.layer.cornerRadius = 5
        categoriFirstStackView.alignment = .center
        
        //categoriSecondStackView style
        categoriSecondStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriSecondStackView.spacing = 8
        categoriSecondStackView.axis = .horizontal
        //categoriSecondStackView.backgroundColor =
        categoriSecondStackView.layer.cornerRadius = 5
        categoriSecondStackView.alignment = .center

        //categoriThirdStackView style
        categoriThirdStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriThirdStackView.spacing = 8
        categoriThirdStackView.axis = .horizontal
        categoriThirdStackView.backgroundColor = .cyan
        categoriThirdStackView.layer.cornerRadius = 5
        
        
        //FirstStackView
        //categoriesView style
        categoriesView.translatesAutoresizingMaskIntoConstraints = false
        categoriesView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        categoriesView.layer.cornerRadius = 5
        //marketView style
        marketView.translatesAutoresizingMaskIntoConstraints = false
        marketView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        marketView.layer.cornerRadius = 5
        //pazaramaHolidayView style
        pazaramaHolidayView.translatesAutoresizingMaskIntoConstraints = false
        pazaramaHolidayView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        pazaramaHolidayView.layer.cornerRadius = 5
        //pazaramaPetView style
        pazaramaPetView.translatesAutoresizingMaskIntoConstraints = false
        pazaramaPetView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        pazaramaPetView.layer.cornerRadius = 5
        //categoriesButton style
        categoriesButton.translatesAutoresizingMaskIntoConstraints = false
        categoriesButton.setImage(UIImage(named: "pazaramakategori"), for: .normal)
        //marketButton style
        marketButton.translatesAutoresizingMaskIntoConstraints = false
        marketButton.setImage(UIImage(named: "pazaramamarket"), for: .normal)
        //pazaramaHolidayButton style
        pazaramaHolidayButton.translatesAutoresizingMaskIntoConstraints = false
        pazaramaHolidayButton.setImage(UIImage(named: "pazaramatatil"), for: .normal)
        //pazaramaPetButton style
        pazaramaPetButton.translatesAutoresizingMaskIntoConstraints = false
        pazaramaPetButton.setImage(UIImage(named: "pazaramapet"), for: .normal)
        //categoriesLabelView style
        categoriesLabelView.translatesAutoresizingMaskIntoConstraints = false
        categoriesLabelView.layer.cornerRadius = 5
        categoriesLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //marketLabelView style
        marketLabelView.translatesAutoresizingMaskIntoConstraints = false
        marketLabelView.layer.cornerRadius = 5
        marketLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //holidayLabelView style
        holidayLabelView.translatesAutoresizingMaskIntoConstraints = false
        holidayLabelView.layer.cornerRadius = 5
        holidayLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //petLabelView style
        petLabelView.translatesAutoresizingMaskIntoConstraints = false
        petLabelView.layer.cornerRadius = 5
        petLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //categoriesLabel style
        categoriesLabel.translatesAutoresizingMaskIntoConstraints = false
        categoriesLabel.text = "Kategoriler"
        categoriesLabel.font = .boldSystemFont(ofSize: 10)
        categoriesLabel.textColor = .black
        categoriesLabel.textAlignment = .center
        categoriesLabel.isSelectable = false
        categoriesLabel.backgroundColor = .clear
        //marketLabel style
        marketLabel.translatesAutoresizingMaskIntoConstraints = false
        marketLabel.text = "Market"
        marketLabel.font = .boldSystemFont(ofSize: 10)
        marketLabel.textColor = .black
        marketLabel.textAlignment = .center
        marketLabel.isSelectable = false
        marketLabel.backgroundColor = .clear
        //holidayLabel style
        holidayLabel.translatesAutoresizingMaskIntoConstraints = false
        holidayLabel.text = "Pazarama Tatil"
        holidayLabel.font = .boldSystemFont(ofSize: 10)
        holidayLabel.textColor = .black
        holidayLabel.textAlignment = .center
        holidayLabel.isSelectable = false
        holidayLabel.backgroundColor = .clear
        //petLabel style
        petLabel.translatesAutoresizingMaskIntoConstraints = false
        petLabel.text = "Pazarama Pet"
        petLabel.font = .boldSystemFont(ofSize: 10)
        petLabel.textColor = .black
        petLabel.textAlignment = .center
        petLabel.isSelectable = false
        petLabel.backgroundColor = .clear
        
        
        //SecondStackView
        //bestSellerView style
        bestSellerView.translatesAutoresizingMaskIntoConstraints = false
        bestSellerView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        bestSellerView.layer.cornerRadius = 5
        //bestFavoritesView style
        bestFavoritesView.translatesAutoresizingMaskIntoConstraints = false
        bestFavoritesView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        bestFavoritesView.layer.cornerRadius = 5
        //ekstreIndirimiView style
        ekstreIndirimiView.translatesAutoresizingMaskIntoConstraints = false
        ekstreIndirimiView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        ekstreIndirimiView.layer.cornerRadius = 5
        //superCekilisView style
        superCekilisView.translatesAutoresizingMaskIntoConstraints = false
        superCekilisView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        superCekilisView.layer.cornerRadius = 5
        
        //bestSellerButton style
        bestSellerButton.translatesAutoresizingMaskIntoConstraints = false
        bestSellerButton.setImage(UIImage(named: "pazaramacoksatanlar"), for: .normal)
        //bestFavoritesButton style
        bestFavoritesButton.translatesAutoresizingMaskIntoConstraints = false
        bestFavoritesButton.setImage(UIImage(named: "pazaramaenfavoriler"), for: .normal)
        //ekstreIndirimiButton style
        ekstreIndirimiButton.translatesAutoresizingMaskIntoConstraints = false
        ekstreIndirimiButton.setImage(UIImage(named: "pazaramatatil"), for: .normal)
        //superCekilisButton style
        superCekilisButton.translatesAutoresizingMaskIntoConstraints = false
        superCekilisButton.setImage(UIImage(named: "pazaramapet"), for: .normal)
        
        //bestSellerLabelView style
        bestSellerLabelView.translatesAutoresizingMaskIntoConstraints = false
        bestSellerLabelView.layer.cornerRadius = 5
        bestSellerLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //bestFavoritesLabelView style
        bestFavoritesLabelView.translatesAutoresizingMaskIntoConstraints = false
        bestFavoritesLabelView.layer.cornerRadius = 5
        bestFavoritesLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //ekstreIndirimiLabelView style
        ekstreIndirimiLabelView.translatesAutoresizingMaskIntoConstraints = false
        ekstreIndirimiLabelView.layer.cornerRadius = 5
        ekstreIndirimiLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //superCekilisLabelView style
        superCekilisLabelView.translatesAutoresizingMaskIntoConstraints = false
        superCekilisLabelView.layer.cornerRadius = 5
        superCekilisLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //bestSellerLabel style
        bestSellerLabel.translatesAutoresizingMaskIntoConstraints = false
        bestSellerLabel.text = "Çok Satanlar"
        bestSellerLabel.font = .boldSystemFont(ofSize: 10)
        bestSellerLabel.textColor = .black
        bestSellerLabel.textAlignment = .center
        bestSellerLabel.isSelectable = false
        bestSellerLabel.backgroundColor = .clear
        //bestFavoritesLabel style
        bestFavoritesLabel.translatesAutoresizingMaskIntoConstraints = false
        bestFavoritesLabel.text = "En Favoriler"
        bestFavoritesLabel.font = .boldSystemFont(ofSize: 10)
        bestFavoritesLabel.textColor = .black
        bestFavoritesLabel.textAlignment = .center
        bestFavoritesLabel.isSelectable = false
        bestFavoritesLabel.backgroundColor = .clear
        //ekstreIndirimiLabel style
        ekstreIndirimiLabel.translatesAutoresizingMaskIntoConstraints = false
        ekstreIndirimiLabel.text = "Ekstre İndirimi"
        ekstreIndirimiLabel.font = .boldSystemFont(ofSize: 10)
        ekstreIndirimiLabel.textColor = .black
        ekstreIndirimiLabel.textAlignment = .center
        ekstreIndirimiLabel.isSelectable = false
        ekstreIndirimiLabel.backgroundColor = .clear
        //superCekilisLabel style
        superCekilisLabel.translatesAutoresizingMaskIntoConstraints = false
        superCekilisLabel.text = "Süper Çekiliş"
        superCekilisLabel.font = .boldSystemFont(ofSize: 10)
        superCekilisLabel.textColor = .black
        superCekilisLabel.textAlignment = .center
        superCekilisLabel.isSelectable = false
        superCekilisLabel.backgroundColor = .clear
        
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
        //FirstStackView
        categoriFirstStackView.addArrangedSubview(categoriesView)
        categoriFirstStackView.addArrangedSubview(marketView)
        categoriFirstStackView.addArrangedSubview(pazaramaHolidayView)
        categoriFirstStackView.addArrangedSubview(pazaramaPetView)
        categoriesView.addSubview(categoriesButton)
        marketView.addSubview(marketButton)
        pazaramaHolidayView.addSubview(pazaramaHolidayButton)
        pazaramaPetView.addSubview(pazaramaPetButton)
        categoriesView.addSubview(categoriesLabelView)
        marketView.addSubview(marketLabelView)
        pazaramaHolidayView.addSubview(holidayLabelView)
        pazaramaPetView.addSubview(petLabelView)
        categoriesLabelView.addSubview(categoriesLabel)
        marketLabelView.addSubview(marketLabel)
        holidayLabelView.addSubview(holidayLabel)
        petLabelView.addSubview(petLabel)
        //SecondStackView
        categoriSecondStackView.addArrangedSubview(bestSellerView)
        categoriSecondStackView.addArrangedSubview(bestFavoritesView)
        categoriSecondStackView.addArrangedSubview(ekstreIndirimiView)
        categoriSecondStackView.addArrangedSubview(superCekilisView)
        bestSellerView.addSubview(bestSellerButton)
        bestFavoritesView.addSubview(bestFavoritesButton)
        ekstreIndirimiView.addSubview(ekstreIndirimiButton)
        superCekilisView.addSubview(superCekilisButton)
        bestSellerView.addSubview(bestSellerLabelView)
        bestFavoritesView.addSubview(bestFavoritesLabelView)
        ekstreIndirimiView.addSubview(ekstreIndirimiLabelView)
        superCekilisView.addSubview(superCekilisLabelView)
        bestSellerLabelView.addSubview(bestSellerLabel)
        bestFavoritesLabelView.addSubview(bestFavoritesLabel)
        ekstreIndirimiLabelView.addSubview(ekstreIndirimiLabel)
        superCekilisLabelView.addSubview(superCekilisLabel)
        
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
            //firstStackView icons layout
            categoriesView.widthAnchor.constraint(equalToConstant: 88),
            categoriesView.heightAnchor.constraint(equalToConstant: 114),
            marketView.widthAnchor.constraint(equalToConstant: 89),
            marketView.heightAnchor.constraint(equalToConstant: 114),
            pazaramaHolidayView.widthAnchor.constraint(equalToConstant: 88),
            pazaramaHolidayView.heightAnchor.constraint(equalToConstant: 114),
            pazaramaPetView.widthAnchor.constraint(equalToConstant: 88),
            pazaramaPetView.heightAnchor.constraint(equalToConstant: 114),
            //categoriesButton layout
            categoriesButton.topAnchor.constraint(equalTo: categoriesView.topAnchor, constant: 2),
            categoriesButton.leadingAnchor.constraint(equalTo: categoriesView.leadingAnchor, constant: 2),
            categoriesButton.trailingAnchor.constraint(equalTo: categoriesView.trailingAnchor, constant: -4),
            categoriesButton.bottomAnchor.constraint(equalTo: categoriesView.bottomAnchor, constant: -27),
            //marketButton layout
            marketButton.topAnchor.constraint(equalTo: marketView.topAnchor, constant: 2),
            marketButton.leadingAnchor.constraint(equalTo: marketView.leadingAnchor, constant: 2),
            marketButton.trailingAnchor.constraint(equalTo: marketView.trailingAnchor, constant: -4),
            marketButton.bottomAnchor.constraint(equalTo: marketView.bottomAnchor, constant: -27),
            //pazaramaHolidayButton layout
            pazaramaHolidayButton.topAnchor.constraint(equalTo: pazaramaHolidayView.topAnchor, constant: 2),
            pazaramaHolidayButton.leadingAnchor.constraint(equalTo: pazaramaHolidayView.leadingAnchor, constant: 2),
            pazaramaHolidayButton.trailingAnchor.constraint(equalTo: pazaramaHolidayView.trailingAnchor, constant: -4),
            pazaramaHolidayButton.bottomAnchor.constraint(equalTo: pazaramaHolidayView.bottomAnchor, constant: -27),
            //pazaramaPetButton layout
            pazaramaPetButton.topAnchor.constraint(equalTo: pazaramaPetView.topAnchor, constant: 2),
            pazaramaPetButton.leadingAnchor.constraint(equalTo: pazaramaPetView.leadingAnchor, constant: 2),
            pazaramaPetButton.trailingAnchor.constraint(equalTo: pazaramaPetView.trailingAnchor, constant: -4),
            pazaramaPetButton.bottomAnchor.constraint(equalTo: pazaramaPetView.bottomAnchor, constant: -27),
            //categoriesLabelView layout
            categoriesLabelView.topAnchor.constraint(equalTo: categoriesButton.bottomAnchor),
            categoriesLabelView.leadingAnchor.constraint(equalTo: categoriesView.leadingAnchor,constant: 2),
            categoriesLabelView.trailingAnchor.constraint(equalTo: categoriesView.trailingAnchor, constant: -2),
            categoriesLabelView.bottomAnchor.constraint(equalTo: categoriesView.bottomAnchor, constant: -2),
            //marketLabelView layout
            marketLabelView.topAnchor.constraint(equalTo: marketButton.bottomAnchor),
            marketLabelView.leadingAnchor.constraint(equalTo: marketView.leadingAnchor,constant: 2),
            marketLabelView.trailingAnchor.constraint(equalTo: marketView.trailingAnchor, constant: -2),
            marketLabelView.bottomAnchor.constraint(equalTo: marketView.bottomAnchor, constant: -2),
            //holidayLabelView layout
            holidayLabelView.topAnchor.constraint(equalTo: pazaramaHolidayButton.bottomAnchor),
            holidayLabelView.leadingAnchor.constraint(equalTo: pazaramaHolidayView.leadingAnchor,constant: 2),
            holidayLabelView.trailingAnchor.constraint(equalTo: pazaramaHolidayView.trailingAnchor, constant: -2),
            holidayLabelView.bottomAnchor.constraint(equalTo: pazaramaHolidayView.bottomAnchor, constant: -2),
            //petLabelView layout
            petLabelView.topAnchor.constraint(equalTo: pazaramaPetButton.bottomAnchor),
            petLabelView.leadingAnchor.constraint(equalTo: pazaramaPetView.leadingAnchor,constant: 2),
            petLabelView.trailingAnchor.constraint(equalTo: pazaramaPetView.trailingAnchor, constant: -2),
            petLabelView.bottomAnchor.constraint(equalTo: pazaramaPetView.bottomAnchor, constant: -2),
            
            //categoriesLabel layout
            categoriesLabel.widthAnchor.constraint(equalTo: categoriesLabelView.widthAnchor),
            categoriesLabel.heightAnchor.constraint(equalTo: categoriesLabelView.heightAnchor),
            //marketLabel layout
            marketLabel.widthAnchor.constraint(equalTo: marketLabelView.widthAnchor),
            marketLabel.heightAnchor.constraint(equalTo: marketLabelView.heightAnchor),
            //holidayLabel layout
            holidayLabel.widthAnchor.constraint(equalTo: holidayLabelView.widthAnchor),
            holidayLabel.heightAnchor.constraint(equalTo: holidayLabelView.heightAnchor),
            //petLabel layout
            petLabel.widthAnchor.constraint(equalTo: petLabelView.widthAnchor),
            petLabel.heightAnchor.constraint(equalTo: petLabelView.heightAnchor),
            
            //SecondStackView icons layout
            bestSellerView.widthAnchor.constraint(equalToConstant: 88),
            bestSellerView.heightAnchor.constraint(equalToConstant: 114),
            bestFavoritesView.widthAnchor.constraint(equalToConstant: 89),
            bestFavoritesView.heightAnchor.constraint(equalToConstant: 114),
            ekstreIndirimiView.widthAnchor.constraint(equalToConstant: 88),
            ekstreIndirimiView.heightAnchor.constraint(equalToConstant: 114),
            superCekilisView.widthAnchor.constraint(equalToConstant: 88),
            superCekilisView.heightAnchor.constraint(equalToConstant: 114),
            
            //bestSellerButton layout
            bestSellerButton.topAnchor.constraint(equalTo: bestSellerView.topAnchor, constant: 2),
            bestSellerButton.leadingAnchor.constraint(equalTo: bestSellerView.leadingAnchor, constant: 2),
            bestSellerButton.trailingAnchor.constraint(equalTo: bestSellerView.trailingAnchor, constant: -4),
            bestSellerButton.bottomAnchor.constraint(equalTo: bestSellerView.bottomAnchor, constant: -27),
            //bestFavoritesButton layout
            bestFavoritesButton.topAnchor.constraint(equalTo: bestFavoritesView.topAnchor, constant: 2),
            bestFavoritesButton.leadingAnchor.constraint(equalTo: bestFavoritesView.leadingAnchor, constant: 2),
            bestFavoritesButton.trailingAnchor.constraint(equalTo: bestFavoritesView.trailingAnchor, constant: -4),
            bestFavoritesButton.bottomAnchor.constraint(equalTo: bestFavoritesView.bottomAnchor, constant: -27),
            //ekstreIndirimiButton layout
            ekstreIndirimiButton.topAnchor.constraint(equalTo: ekstreIndirimiView.topAnchor, constant: 2),
            ekstreIndirimiButton.leadingAnchor.constraint(equalTo: ekstreIndirimiView.leadingAnchor, constant: 2),
            ekstreIndirimiButton.trailingAnchor.constraint(equalTo: ekstreIndirimiView.trailingAnchor, constant: -4),
            ekstreIndirimiButton.bottomAnchor.constraint(equalTo: ekstreIndirimiView.bottomAnchor, constant: -27),
            //superCekilisButton layout
            superCekilisButton.topAnchor.constraint(equalTo: superCekilisView.topAnchor, constant: 2),
            superCekilisButton.leadingAnchor.constraint(equalTo: superCekilisView.leadingAnchor, constant: 2),
            superCekilisButton.trailingAnchor.constraint(equalTo: superCekilisView.trailingAnchor, constant: -4),
            superCekilisButton.bottomAnchor.constraint(equalTo: superCekilisView.bottomAnchor, constant: -27),
            //bestSellerLabelView layout
            bestSellerLabelView.topAnchor.constraint(equalTo: bestSellerButton.bottomAnchor),
            bestSellerLabelView.leadingAnchor.constraint(equalTo: bestSellerView.leadingAnchor,constant: 2),
            bestSellerLabelView.trailingAnchor.constraint(equalTo: bestSellerView.trailingAnchor, constant: -2),
            bestSellerLabelView.bottomAnchor.constraint(equalTo: bestSellerView.bottomAnchor, constant: -2),
            //bestFavoritesLabelView layout
            bestFavoritesLabelView.topAnchor.constraint(equalTo: bestFavoritesButton.bottomAnchor),
            bestFavoritesLabelView.leadingAnchor.constraint(equalTo: bestFavoritesView.leadingAnchor,constant: 2),
            bestFavoritesLabelView.trailingAnchor.constraint(equalTo: bestFavoritesView.trailingAnchor, constant: -2),
            bestFavoritesLabelView.bottomAnchor.constraint(equalTo: bestFavoritesView.bottomAnchor, constant: -2),
            //ekstreIndirimiLabelView layout
            ekstreIndirimiLabelView.topAnchor.constraint(equalTo: ekstreIndirimiButton.bottomAnchor),
            ekstreIndirimiLabelView.leadingAnchor.constraint(equalTo: ekstreIndirimiView.leadingAnchor,constant: 2),
            ekstreIndirimiLabelView.trailingAnchor.constraint(equalTo: ekstreIndirimiView.trailingAnchor, constant: -2),
            ekstreIndirimiLabelView.bottomAnchor.constraint(equalTo: ekstreIndirimiView.bottomAnchor, constant: -2),
            //petLabelView layout
            superCekilisLabelView.topAnchor.constraint(equalTo: superCekilisButton.bottomAnchor),
            superCekilisLabelView.leadingAnchor.constraint(equalTo: superCekilisView.leadingAnchor,constant: 2),
            superCekilisLabelView.trailingAnchor.constraint(equalTo: superCekilisView.trailingAnchor, constant: -2),
            superCekilisLabelView.bottomAnchor.constraint(equalTo: superCekilisView.bottomAnchor, constant: -2),
            
            //bestSellerLabel layout
            bestSellerLabel.widthAnchor.constraint(equalTo: bestSellerLabelView.widthAnchor),
            bestSellerLabel.heightAnchor.constraint(equalTo: bestSellerLabelView.heightAnchor),
            //bestFavoritesLabel layout
            bestFavoritesLabel.widthAnchor.constraint(equalTo: bestFavoritesLabelView.widthAnchor),
            bestFavoritesLabel.heightAnchor.constraint(equalTo: bestFavoritesLabelView.heightAnchor),
            //ekstreIndirimiLabel layout
            ekstreIndirimiLabel.widthAnchor.constraint(equalTo: ekstreIndirimiLabelView.widthAnchor),
            ekstreIndirimiLabel.heightAnchor.constraint(equalTo: ekstreIndirimiLabelView.heightAnchor),
            //petLabel layout
            superCekilisLabel.widthAnchor.constraint(equalTo: superCekilisLabelView.widthAnchor),
            superCekilisLabel.heightAnchor.constraint(equalTo: superCekilisLabelView.heightAnchor),
            
            
        ])
    }
    private func makeStackViewButtons(with image:UIImage?,and title:String, vc:UIViewController) -> UINavigationController {
        let navi = UINavigationController(rootViewController: vc)
        
        
        return navi
        }
    
    }

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}



