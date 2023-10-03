//
//  WalletController.swift
//  TabBarController
//
//  Created by Şükrü Şimşek on 23.09.2023.
//

import UIKit

class WalletController: UIViewController {
    //MARK: - Properties
    private let walletImageView = UIImageView()
    private let pazaramaWelcomeLabel = UILabel()
    private let campaingInWallet = UILabel()
    private let createWalletButton = UIButton()
    private let descriptionForWallet = UILabel()
    
    private let whatIsTheWallet = UILabel()
    private let descriptionUIView = UIView()
    private let descriptionUIView2 = UIView()
    private let walletIconForWallet = UIImage(systemName: "creditcard")
    private let walletIconForTransfer = UIImage(systemName: "turkishlirasign.square")
    private let walletDescriptionForWallet = UILabel()
    private let walletDescriptionForTransfer = UILabel()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
}
//MARK: - Helpers
extension WalletController {
    private func style(){
        //walletImageView style
        walletImageView.translatesAutoresizingMaskIntoConstraints = false
        walletImageView.image = UIImage(named: "walletImage")
        walletImageView.layer.cornerRadius = 10
        walletImageView.clipsToBounds = true
        
        //pazaramaWelcomeLabel style
        pazaramaWelcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        pazaramaWelcomeLabel.text = "Pazarama Cüzdan'a Hos Geldiniz"
        pazaramaWelcomeLabel.numberOfLines = 2
        pazaramaWelcomeLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 30)
        pazaramaWelcomeLabel.textColor = .white
        pazaramaWelcomeLabel.textAlignment = .center
        //campaingInWallet style
        campaingInWallet.translatesAutoresizingMaskIntoConstraints = false
        campaingInWallet.text = "Tüm fırsatlardan yararlanmak için hemen"
        campaingInWallet.textColor = .white
        campaingInWallet.textAlignment = .center
        campaingInWallet.font = .boldSystemFont(ofSize: 13)
        //createWalletButton style
        createWalletButton.translatesAutoresizingMaskIntoConstraints = false
        createWalletButton.setTitle("Cüzdan Oluştur", for: .normal)
        createWalletButton.layer.cornerRadius = 3
        createWalletButton.backgroundColor = .systemPink
        //descriptionForWallet style
        descriptionForWallet.translatesAutoresizingMaskIntoConstraints = false
        descriptionForWallet.textColor = .white
        //descriptionForWallet.text = "Pazarama Cüzdan altyapısı MOKA tarafından sağlanmaktadır."
        
        let fullString = NSMutableAttributedString(string: "Pazarama Cüzdan altyapısı ")
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "moka")
        imageAttachment.bounds = CGRect(x: 0, y: -5, width: 48, height: 16)
        let imageString = NSAttributedString(attachment: imageAttachment)
        fullString.append(imageString)
        fullString.append(NSAttributedString(string: " tarafından sağlanmaktadır."))
        descriptionForWallet.attributedText = fullString
        descriptionForWallet.font = .systemFont(ofSize: 10)
        descriptionForWallet.textAlignment = .center
        //whatIsTheWallet style
        whatIsTheWallet.translatesAutoresizingMaskIntoConstraints = false
        whatIsTheWallet.text = "Cüzdan Nedir?"
        whatIsTheWallet.font = UIFont(name: "HelveticaNeue", size: 24)
        whatIsTheWallet.textColor = .black
        whatIsTheWallet.textAlignment = .left
        
        //descriptionUIView style
        descriptionUIView.translatesAutoresizingMaskIntoConstraints = false
        descriptionUIView.backgroundColor = .brown
        descriptionUIView.layer.cornerRadius = 5
        descriptionUIView.clipsToBounds = true
        
        //descriptionUIView2 style
        descriptionUIView2.translatesAutoresizingMaskIntoConstraints = false
        descriptionUIView2.backgroundColor = .cyan
        descriptionUIView2.layer.cornerRadius = 5
        descriptionUIView2.clipsToBounds = true
    }
    private func layout(){
        view.addSubview(walletImageView)
        walletImageView.addSubview(pazaramaWelcomeLabel)
        walletImageView.addSubview(campaingInWallet)
        walletImageView.addSubview(createWalletButton)
        walletImageView.addSubview(descriptionForWallet)
        view.addSubview(whatIsTheWallet)
        view.addSubview(descriptionUIView)
        view.addSubview(descriptionUIView2)
        
        NSLayoutConstraint.activate([
            //walletImageView layout
            walletImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            walletImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            walletImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            //walletImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            walletImageView.heightAnchor.constraint(equalToConstant: 300),
            
            //pazaramaWelcomeLabel layout
            pazaramaWelcomeLabel.topAnchor.constraint(equalTo: walletImageView.topAnchor, constant: 30),
            pazaramaWelcomeLabel.leadingAnchor.constraint(equalTo: walletImageView.leadingAnchor, constant: 20),
            pazaramaWelcomeLabel.trailingAnchor.constraint(equalTo: walletImageView.trailingAnchor, constant: -20),
            //campaingInWallet layout
            
            campaingInWallet.topAnchor.constraint(equalTo: pazaramaWelcomeLabel.bottomAnchor, constant: 8),
            campaingInWallet.leadingAnchor.constraint(equalTo: walletImageView.leadingAnchor, constant: 20),
            campaingInWallet.trailingAnchor.constraint(equalTo: walletImageView.trailingAnchor, constant: -20),
            //createWalletButton layout
            createWalletButton.topAnchor.constraint(equalTo: campaingInWallet.bottomAnchor, constant: 8),
            createWalletButton.leadingAnchor.constraint(equalTo: walletImageView.leadingAnchor, constant: 15),
            createWalletButton.trailingAnchor.constraint(equalTo: walletImageView.trailingAnchor, constant: -15),
            createWalletButton.heightAnchor.constraint(equalToConstant: 40),
            //descriptionForWallet layout
            descriptionForWallet.topAnchor.constraint(equalTo: createWalletButton.bottomAnchor, constant: 10),
            descriptionForWallet.leadingAnchor.constraint(equalTo: walletImageView.leadingAnchor),
            descriptionForWallet.trailingAnchor.constraint(equalTo: walletImageView.trailingAnchor),
            descriptionForWallet.bottomAnchor.constraint(equalTo: walletImageView.bottomAnchor, constant: -15),
            //whatIsTheWallet layout
            whatIsTheWallet.topAnchor.constraint(equalTo: walletImageView.bottomAnchor, constant: 15),
            whatIsTheWallet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            //descriptionUIView layout
            descriptionUIView.topAnchor.constraint(equalTo: whatIsTheWallet.bottomAnchor, constant: 8),
            descriptionUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            descriptionUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
            descriptionUIView.heightAnchor.constraint(equalToConstant: 100),
            //descriptionUIView2 layout
            descriptionUIView2.topAnchor.constraint(equalTo: descriptionUIView.bottomAnchor, constant: 8),
            descriptionUIView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            descriptionUIView2.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
            descriptionUIView2.heightAnchor.constraint(equalToConstant: 100),
        ])
        
    }
}
