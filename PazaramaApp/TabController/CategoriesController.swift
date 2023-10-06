//
//  CategoreiesController.swift
//  TabBarController
//
//  Created by Şükrü Şimşek on 23.09.2023.
//

import UIKit

class CategoriesController: UIViewController {
    //MARK: - Properties
    private let allCategoriesLabel = UILabel()
    private let favoriteProductIcon = UIButton()
    private let myBoxIcon = UIButton()
    private let productSearchTextField = UITextField()
    let images = ["homeelectronic","babyandmom","smartphone","furniture","shoes","book","cosmetic","moda","whell","game","outdoor","supermarket"]
    
    var collectionView: UICollectionView!
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        view.backgroundColor = .white
        layoutController()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CustomCellForCampaign.self, forCellWithReuseIdentifier: "cell")

    }

}
//MARK: - Helpers
extension CategoriesController {
    private func style() {
        //allCategoriesLabel style
        allCategoriesLabel.translatesAutoresizingMaskIntoConstraints = false
        allCategoriesLabel.text = "Tüm Kategoriler"
        allCategoriesLabel.font = .systemFont(ofSize: 18)
        allCategoriesLabel.textColor = .black
        allCategoriesLabel.textAlignment = .left
        
        //favoriteProductIcon style
        favoriteProductIcon.translatesAutoresizingMaskIntoConstraints = false
        favoriteProductIcon.setImage(UIImage(named: "favoriteProductsIcon"), for: .normal)
        favoriteProductIcon.sizeToFit()
        
        //myBoxIcon style
        myBoxIcon.translatesAutoresizingMaskIntoConstraints = false
        myBoxIcon.setImage(UIImage(systemName: "cart"), for: .normal)
        myBoxIcon.tintColor = .black
        //productSearchTextField style
        productSearchTextField.translatesAutoresizingMaskIntoConstraints = false
        productSearchTextField.placeholder = "Marka, ürün veya hizmet arayın"
        productSearchTextField.borderStyle = .roundedRect
        productSearchTextField.textColor = .black
        productSearchTextField.font = .systemFont(ofSize: 13)
        
        let paddingView = UIView(frame: CGRectMake(0, 0, 15, self.productSearchTextField.frame.height))
        productSearchTextField.leftView = paddingView
        productSearchTextField.leftViewMode = UITextField.ViewMode.always
        
        
        
    }
    
    private func layoutController() {
        
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        view.addSubview(allCategoriesLabel)
        view.addSubview(favoriteProductIcon)
        view.addSubview(myBoxIcon)
        view.addSubview(productSearchTextField)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: productSearchTextField.bottomAnchor,constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            allCategoriesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            allCategoriesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            allCategoriesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            favoriteProductIcon.topAnchor.constraint(equalTo: allCategoriesLabel.topAnchor),
            favoriteProductIcon.trailingAnchor.constraint(equalTo: myBoxIcon.leadingAnchor),
            favoriteProductIcon.leadingAnchor.constraint(equalTo: allCategoriesLabel.trailingAnchor),
            
            favoriteProductIcon.widthAnchor.constraint(equalToConstant: 24),
            favoriteProductIcon.heightAnchor.constraint(equalToConstant: 24),
            
           
            myBoxIcon.topAnchor.constraint(equalTo: favoriteProductIcon.topAnchor),
            myBoxIcon.leadingAnchor.constraint(equalTo: favoriteProductIcon.trailingAnchor, constant: 10),
            myBoxIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            myBoxIcon.widthAnchor.constraint(equalToConstant: 24),
            myBoxIcon.heightAnchor.constraint(equalToConstant: 24),
            
            productSearchTextField.topAnchor.constraint(equalTo: allCategoriesLabel.bottomAnchor, constant: 10),
            productSearchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            productSearchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
        ])
    }
}

extension CategoriesController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2 - 20, height: view.frame.height/8)
    }
    
}

extension CategoriesController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCellForCampaign
        cell.imageImageView.image = UIImage(named: images[indexPath.row])
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Detay Sayfasına Gdilecek \(indexPath.row)")
    }
    
    
}

class CustomCellForCategories: UICollectionViewCell {
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.layer.cornerRadius = 10
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 0.5
        
        
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
