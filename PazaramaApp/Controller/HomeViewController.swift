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
    private let categoriesLabel = UILabel()
    private let marketLabel = UILabel()
    private let holidayLabel = UILabel()
    private let petLabel = UILabel()
    
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
    
    private let bestSellerLabel = UILabel()
    private let bestFavoritesLabel = UILabel()
    private let ekstreIndirimiLabel = UILabel()
    private let superCekilisLabel = UILabel()
    
    private let indiriminSuperiView = UIView()
    private let sezonOncesiFirsatView = UIView()
    private let saatVeSaatView = UIView()
    private let valizVeBavulView = UIView()
    
    private let indiriminSuperiButton = UIButton()
    private let sezonOncesiFirsatButton = UIButton()
    private let saatVeSaatButton = UIButton()
    private let valizVeBavulButton = UIButton()
    
    private let indiriminSuperiLabelView = UIView()
    private let sezonOncesiFirsatLabelView = UIView()
    private let saatVeSaatLabelView = UIView()
    private let valizVeBavulLabelView = UIView()
    
    private let indiriminSuperiLabel = UILabel()
    private let sezonOncesiFirsatLabel = UILabel()
    private let saatVeSaatLabel = UILabel()
    private let valizVeBavulLabel = UILabel()
    
    let imagesForSurprise = ["1","2","3","4","5","6","7"]
    
    var collectionViewForHomeScreen: UICollectionView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        style()
        layout()
        collectionViewForHomeScreen.dataSource = self
        collectionViewForHomeScreen.delegate = self
        
        func shouldAutorotate() -> Bool {
                    return false
                }
        func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
                    return [UIInterfaceOrientationMask.portrait ]
                }
        collectionViewForHomeScreen.register(CustomCellForHomeScreen.self, forCellWithReuseIdentifier: "cell")
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
        productSearchTextField.textColor = .black
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
        
        //favoriteProductsButton style
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
        categoriFirstStackView.layer.cornerRadius = 5
        categoriFirstStackView.alignment = .center
        
        //categoriSecondStackView style
        categoriSecondStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriSecondStackView.spacing = 8
        categoriSecondStackView.axis = .horizontal
        categoriSecondStackView.layer.cornerRadius = 5
        categoriSecondStackView.alignment = .center

        //categoriThirdStackView style
        categoriThirdStackView.translatesAutoresizingMaskIntoConstraints = false
        categoriThirdStackView.spacing = 8
        categoriThirdStackView.axis = .horizontal
        categoriThirdStackView.layer.cornerRadius = 5
        categoriSecondStackView.alignment = .center

        
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
        //marketLabel style
        marketLabel.translatesAutoresizingMaskIntoConstraints = false
        marketLabel.text = "Market"
        marketLabel.font = .boldSystemFont(ofSize: 10)
        marketLabel.textColor = .black
        marketLabel.textAlignment = .center
        //holidayLabel style
        holidayLabel.translatesAutoresizingMaskIntoConstraints = false
        holidayLabel.text = "Pazarama Tatil"
        holidayLabel.font = .boldSystemFont(ofSize: 10)
        holidayLabel.textColor = .black
        holidayLabel.textAlignment = .center
        //petLabel style
        petLabel.translatesAutoresizingMaskIntoConstraints = false
        petLabel.text = "Pazarama Pet"
        petLabel.font = .boldSystemFont(ofSize: 10)
        petLabel.textColor = .black
        petLabel.textAlignment = .center
        
        
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
        ekstreIndirimiButton.setImage(UIImage(named: "pazaramaekstreindirimi"), for: .normal)
        //superCekilisButton style
        superCekilisButton.translatesAutoresizingMaskIntoConstraints = false
        superCekilisButton.setImage(UIImage(named: "pazaramasupercekilis"), for: .normal)
        
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
        //bestFavoritesLabel style
        bestFavoritesLabel.translatesAutoresizingMaskIntoConstraints = false
        bestFavoritesLabel.text = "En Favoriler"
        bestFavoritesLabel.font = .boldSystemFont(ofSize: 10)
        bestFavoritesLabel.textColor = .black
        bestFavoritesLabel.textAlignment = .center
        //ekstreIndirimiLabel style
        ekstreIndirimiLabel.translatesAutoresizingMaskIntoConstraints = false
        ekstreIndirimiLabel.text = "Ekstre İndirimi"
        ekstreIndirimiLabel.font = .boldSystemFont(ofSize: 10)
        ekstreIndirimiLabel.textColor = .black
        ekstreIndirimiLabel.textAlignment = .center
        //superCekilisLabel style
        superCekilisLabel.translatesAutoresizingMaskIntoConstraints = false
        superCekilisLabel.text = "Süper Çekiliş"
        superCekilisLabel.font = .boldSystemFont(ofSize: 10)
        superCekilisLabel.textColor = .black
        superCekilisLabel.textAlignment = .center
        
        //ThirdStackView
        //indiriminSuperiView style
        indiriminSuperiView.translatesAutoresizingMaskIntoConstraints = false
        indiriminSuperiView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        indiriminSuperiView.layer.cornerRadius = 5
        //sezonOncesiFirsatView style
        sezonOncesiFirsatView.translatesAutoresizingMaskIntoConstraints = false
        sezonOncesiFirsatView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        sezonOncesiFirsatView.layer.cornerRadius = 5
        //saatVeSaatView style
        saatVeSaatView.translatesAutoresizingMaskIntoConstraints = false
        saatVeSaatView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        saatVeSaatView.layer.cornerRadius = 5
        //valizVeBavulView style
        valizVeBavulView.translatesAutoresizingMaskIntoConstraints = false
        valizVeBavulView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        valizVeBavulView.layer.cornerRadius = 5
        
        //indiriminSuperiButton style
        indiriminSuperiButton.translatesAutoresizingMaskIntoConstraints = false
        indiriminSuperiButton.setImage(UIImage(named: "pazaramaindiriminsuperi"), for: .normal)
        //sezonOncesiFirsatButton style
        sezonOncesiFirsatButton.translatesAutoresizingMaskIntoConstraints = false
        sezonOncesiFirsatButton.setImage(UIImage(named: "pazaramasezonsonu"), for: .normal)
        //saatVeSaatButton style
        saatVeSaatButton.translatesAutoresizingMaskIntoConstraints = false
        saatVeSaatButton.setImage(UIImage(named: "pazaramasaatvesaat"), for: .normal)
        //valizVeBavulButton style
        valizVeBavulButton.translatesAutoresizingMaskIntoConstraints = false
        valizVeBavulButton.setImage(UIImage(named: "pazaramavaliz"), for: .normal)
        
        //indiriminSuperiLabelView style
        indiriminSuperiLabelView.translatesAutoresizingMaskIntoConstraints = false
        indiriminSuperiLabelView.layer.cornerRadius = 5
        indiriminSuperiLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //sezonOncesiFirsatLabelView style
        sezonOncesiFirsatLabelView.translatesAutoresizingMaskIntoConstraints = false
        sezonOncesiFirsatLabelView.layer.cornerRadius = 5
        sezonOncesiFirsatLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //saatVeSaatLabelView style
        saatVeSaatLabelView.translatesAutoresizingMaskIntoConstraints = false
        saatVeSaatLabelView.layer.cornerRadius = 5
        saatVeSaatLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        //valizVeBavulLabelView style
        valizVeBavulLabelView.translatesAutoresizingMaskIntoConstraints = false
        valizVeBavulLabelView.layer.cornerRadius = 5
        valizVeBavulLabelView.backgroundColor = UIColor(rgb: 0xffffff)
        
        //indiriminSuperiLabel style
        indiriminSuperiLabel.translatesAutoresizingMaskIntoConstraints = false
        indiriminSuperiLabel.text = "İndirimin Süperi"
        indiriminSuperiLabel.font = .boldSystemFont(ofSize: 10)
        indiriminSuperiLabel.textColor = .black
        indiriminSuperiLabel.textAlignment = .center
        indiriminSuperiLabel.backgroundColor = .clear
        //sezonOncesiFirsatLabel style
        sezonOncesiFirsatLabel.translatesAutoresizingMaskIntoConstraints = false
        sezonOncesiFirsatLabel.text = "Sezon Sonu"
        sezonOncesiFirsatLabel.font = .boldSystemFont(ofSize: 10)
        sezonOncesiFirsatLabel.textColor = .black
        sezonOncesiFirsatLabel.textAlignment = .center
        sezonOncesiFirsatLabel.backgroundColor = .clear
        //saatVeSaatLabel style
        saatVeSaatLabel.translatesAutoresizingMaskIntoConstraints = false
        saatVeSaatLabel.text = "Saat ve Saat"
        saatVeSaatLabel.font = .boldSystemFont(ofSize: 10)
        saatVeSaatLabel.textColor = .black
        saatVeSaatLabel.textAlignment = .center
        saatVeSaatLabel.backgroundColor = .clear
        //valizVeBavulLabel style
        valizVeBavulLabel.translatesAutoresizingMaskIntoConstraints = false
        valizVeBavulLabel.text = "Valizlerde Fırsat"
        valizVeBavulLabel.font = .boldSystemFont(ofSize: 10)
        valizVeBavulLabel.textColor = .black
        valizVeBavulLabel.textAlignment = .center
        valizVeBavulLabel.backgroundColor = .clear
        
        
        
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
        
        let layout1 = UICollectionViewFlowLayout()
        collectionViewForHomeScreen = UICollectionView(frame: .zero, collectionViewLayout: layout1)
        view.addSubview(collectionViewForHomeScreen)
        collectionViewForHomeScreen.translatesAutoresizingMaskIntoConstraints = false

        
        
        collectionViewForHomeScreen.topAnchor.constraint(equalTo: categoriThirdStackView.bottomAnchor, constant: 8).isActive = true
        collectionViewForHomeScreen.leadingAnchor.constraint(equalTo: categoriThirdStackView.leadingAnchor).isActive = true
        collectionViewForHomeScreen.trailingAnchor.constraint(equalTo: categoriThirdStackView.trailingAnchor).isActive = true
        collectionViewForHomeScreen.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        
        
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
        //ThirdStackView
        categoriThirdStackView.addArrangedSubview(indiriminSuperiView)
        categoriThirdStackView.addArrangedSubview(sezonOncesiFirsatView)
        categoriThirdStackView.addArrangedSubview(saatVeSaatView)
        categoriThirdStackView.addArrangedSubview(valizVeBavulView)
        indiriminSuperiView.addSubview(indiriminSuperiButton)
        sezonOncesiFirsatView.addSubview(sezonOncesiFirsatButton)
        saatVeSaatView.addSubview(saatVeSaatButton)
        valizVeBavulView.addSubview(valizVeBavulButton)
        indiriminSuperiView.addSubview(indiriminSuperiLabelView)
        sezonOncesiFirsatView.addSubview(sezonOncesiFirsatLabelView)
        saatVeSaatView.addSubview(saatVeSaatLabelView)
        valizVeBavulView.addSubview(valizVeBavulLabelView)
        indiriminSuperiLabelView.addSubview(indiriminSuperiLabel)
        sezonOncesiFirsatLabelView.addSubview(sezonOncesiFirsatLabel)
        saatVeSaatLabelView.addSubview(saatVeSaatLabel)
        valizVeBavulLabelView.addSubview(valizVeBavulLabel)
        
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
            categoriSecondStackView.topAnchor.constraint(equalTo: categoriFirstStackView.bottomAnchor),
            categoriSecondStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            categoriSecondStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            categoriSecondStackView.heightAnchor.constraint(equalToConstant: 120),
            //categoriThirdStackView layout
            categoriThirdStackView.topAnchor.constraint(equalTo: categoriSecondStackView.bottomAnchor,constant: 4),
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
            
            //ThirdStackView icons layout
            indiriminSuperiView.widthAnchor.constraint(equalToConstant: 88),
            indiriminSuperiView.heightAnchor.constraint(equalToConstant: 114),
            sezonOncesiFirsatView.widthAnchor.constraint(equalToConstant: 89),
            sezonOncesiFirsatView.heightAnchor.constraint(equalToConstant: 114),
            saatVeSaatView.widthAnchor.constraint(equalToConstant: 88),
            saatVeSaatView.heightAnchor.constraint(equalToConstant: 114),
            valizVeBavulView.widthAnchor.constraint(equalToConstant: 88),
            valizVeBavulView.heightAnchor.constraint(equalToConstant: 114),
            
            //ThirdStackView
            //indiriminSuperiButton layout
            indiriminSuperiButton.topAnchor.constraint(equalTo: indiriminSuperiView.topAnchor, constant: 2),
            indiriminSuperiButton.leadingAnchor.constraint(equalTo: indiriminSuperiView.leadingAnchor, constant: 2),
            indiriminSuperiButton.trailingAnchor.constraint(equalTo: indiriminSuperiView.trailingAnchor, constant: -4),
            indiriminSuperiButton.bottomAnchor.constraint(equalTo: indiriminSuperiView.bottomAnchor, constant: -27),
            //sezonOncesiFirsatButton layout
            sezonOncesiFirsatButton.topAnchor.constraint(equalTo: sezonOncesiFirsatView.topAnchor, constant: 2),
            sezonOncesiFirsatButton.leadingAnchor.constraint(equalTo: sezonOncesiFirsatView.leadingAnchor, constant: 2),
            sezonOncesiFirsatButton.trailingAnchor.constraint(equalTo: sezonOncesiFirsatView.trailingAnchor, constant: -4),
            sezonOncesiFirsatButton.bottomAnchor.constraint(equalTo: sezonOncesiFirsatView.bottomAnchor, constant: -27),
            //saatVeSaatButton layout
            saatVeSaatButton.topAnchor.constraint(equalTo: saatVeSaatView.topAnchor, constant: 2),
            saatVeSaatButton.leadingAnchor.constraint(equalTo: saatVeSaatView.leadingAnchor, constant: 2),
            saatVeSaatButton.trailingAnchor.constraint(equalTo: saatVeSaatView.trailingAnchor, constant: -4),
            saatVeSaatButton.bottomAnchor.constraint(equalTo: saatVeSaatView.bottomAnchor, constant: -27),
            //valizVeBavulButton layout
            valizVeBavulButton.topAnchor.constraint(equalTo: valizVeBavulView.topAnchor, constant: 2),
            valizVeBavulButton.leadingAnchor.constraint(equalTo: valizVeBavulView.leadingAnchor, constant: 2),
            valizVeBavulButton.trailingAnchor.constraint(equalTo: valizVeBavulView.trailingAnchor, constant: -4),
            valizVeBavulButton.bottomAnchor.constraint(equalTo: valizVeBavulView.bottomAnchor, constant: -27),
            //indiriminSuperiLabelView layout
            indiriminSuperiLabelView.topAnchor.constraint(equalTo: indiriminSuperiButton.bottomAnchor),
            indiriminSuperiLabelView.leadingAnchor.constraint(equalTo: indiriminSuperiView.leadingAnchor,constant: 2),
            indiriminSuperiLabelView.trailingAnchor.constraint(equalTo: indiriminSuperiView.trailingAnchor, constant: -2),
            indiriminSuperiLabelView.bottomAnchor.constraint(equalTo: indiriminSuperiView.bottomAnchor, constant: -2),
            //sezonOncesiFirsatLabelView layout
            sezonOncesiFirsatLabelView.topAnchor.constraint(equalTo: sezonOncesiFirsatButton.bottomAnchor),
            sezonOncesiFirsatLabelView.leadingAnchor.constraint(equalTo: sezonOncesiFirsatView.leadingAnchor,constant: 2),
            sezonOncesiFirsatLabelView.trailingAnchor.constraint(equalTo: sezonOncesiFirsatView.trailingAnchor, constant: -2),
            sezonOncesiFirsatLabelView.bottomAnchor.constraint(equalTo: sezonOncesiFirsatView.bottomAnchor, constant: -2),
            //saatVeSaatLabelView layout
            saatVeSaatLabelView.topAnchor.constraint(equalTo: saatVeSaatButton.bottomAnchor),
            saatVeSaatLabelView.leadingAnchor.constraint(equalTo: saatVeSaatView.leadingAnchor,constant: 2),
            saatVeSaatLabelView.trailingAnchor.constraint(equalTo: saatVeSaatView.trailingAnchor, constant: -2),
            saatVeSaatLabelView.bottomAnchor.constraint(equalTo: saatVeSaatView.bottomAnchor, constant: -2),
            //valizVeBavulLabelView layout
            valizVeBavulLabelView.topAnchor.constraint(equalTo: valizVeBavulButton.bottomAnchor),
            valizVeBavulLabelView.leadingAnchor.constraint(equalTo: valizVeBavulView.leadingAnchor,constant: 2),
            valizVeBavulLabelView.trailingAnchor.constraint(equalTo: valizVeBavulView.trailingAnchor, constant: -2),
            valizVeBavulLabelView.bottomAnchor.constraint(equalTo: valizVeBavulView.bottomAnchor, constant: -2),
            //indiriminSuperiLabel layout
            indiriminSuperiLabel.widthAnchor.constraint(equalTo: indiriminSuperiLabelView.widthAnchor),
            indiriminSuperiLabel.heightAnchor.constraint(equalTo: indiriminSuperiLabelView.heightAnchor),
            //sezonOncesiFirsatLabel layout
            sezonOncesiFirsatLabel.widthAnchor.constraint(equalTo: sezonOncesiFirsatLabelView.widthAnchor),
            sezonOncesiFirsatLabel.heightAnchor.constraint(equalTo: sezonOncesiFirsatLabelView.heightAnchor),
            //saatVeSaatLabel layout
            saatVeSaatLabel.widthAnchor.constraint(equalTo: saatVeSaatLabelView.widthAnchor),
            saatVeSaatLabel.heightAnchor.constraint(equalTo: saatVeSaatLabelView.heightAnchor),
            //valizVeBavulLabel layout
            valizVeBavulLabel.widthAnchor.constraint(equalTo: valizVeBavulLabelView.widthAnchor),
            valizVeBavulLabel.heightAnchor.constraint(equalTo: valizVeBavulLabelView.heightAnchor),
        ])
    }
    private func makeStackViewButtons(with image:UIImage?,and title:String, vc:UIViewController) -> UINavigationController {
        let navi = UINavigationController(rootViewController: vc)
        
        
        return navi
        }
    
    }
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: view.frame.height/5)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesForSurprise.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewForHomeScreen.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCellForHomeScreen
        cell.imageView.image = UIImage(named: imagesForSurprise[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Detay Sayfasına Gidilecek Home Screen \(indexPath.row)")
    }
}


class CustomCellForHomeScreen: UICollectionViewCell {
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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



