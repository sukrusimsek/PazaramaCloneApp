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
    private let walletIconForWallet = UIImageView()
    private let walletIconForTransfer = UIImageView()
    private let walletDescriptionForWallet = UILabel()
    private let walletDescriptionForTransfer = UILabel()
    private let walletDescriptionTallLabelForWallet = UILabel()
    private let walletDescriptionTallLabelForTransfer = UILabel()

    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        buttonToGoCreateWallet()
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    
}

//MARK: - Helpers
extension WalletController {
    private func buttonToGoCreateWallet() {
                  
        // login button customization
        createWalletButton.translatesAutoresizingMaskIntoConstraints = false
        createWalletButton.setTitle("Cüzdan Oluştur", for: .normal)
        createWalletButton.setTitleColor(.white, for: .normal)
        createWalletButton.layer.cornerRadius = 5
        createWalletButton.layer.masksToBounds = true
        createWalletButton.backgroundColor = UIColor(rgb: 0xFF3FA4)
        createWalletButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        createWalletButton.addTarget(self, action: #selector(handleLoginButtonTapped), for: .touchUpInside)
          
    }
    @objc private func handleLoginButtonTapped() {
        print("button tapped...")
        let createVC = CreateWalletScreenController()
        createVC.modalTransitionStyle = .coverVertical
        present(createVC, animated: true)
        /*UIView.transition(with: self.navigationController!.view, duration: 0.5,options: .transitionFlipFromRight, animations: {
            self.navigationController!.pushViewController(createVC, animated: false)
        },completion: nil)*/
        //navigationController?.pushViewController(createVC, animated: true)
    }
    
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
        descriptionForWallet.translatesAutoresizingMaskIntoConstraints = false
        descriptionForWallet.textColor = .white
        
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
        descriptionUIView.backgroundColor = UIColor(rgb: 0xd9d9d9)
        descriptionUIView.layer.cornerRadius = 5
        descriptionUIView.clipsToBounds = true
        //descriptionUIView2 style
        descriptionUIView2.translatesAutoresizingMaskIntoConstraints = false
        descriptionUIView2.backgroundColor = UIColor(rgb: 0xd9d9d9)
        descriptionUIView2.layer.cornerRadius = 5
        descriptionUIView2.clipsToBounds = true
        //walletIconForWallet style
        walletIconForWallet.translatesAutoresizingMaskIntoConstraints = false
        walletIconForWallet.image = UIImage(systemName: "creditcard")
        //walletIconForTransfer style
        walletIconForTransfer.translatesAutoresizingMaskIntoConstraints = false
        walletIconForTransfer.image = UIImage(systemName: "turkishlirasign.square")
        //walletDescriptionForWallet style
        walletDescriptionForWallet.translatesAutoresizingMaskIntoConstraints = false
        walletDescriptionForWallet.text = "Avantajlı ve Güvenli Alışveriş"
        walletDescriptionForWallet.textColor = .black
        walletDescriptionForWallet.textAlignment = .left
        walletDescriptionForWallet.font = .preferredFont(forTextStyle: UIFont.TextStyle.body)
        //walletDescriptionForTransfer style
        walletDescriptionForTransfer.translatesAutoresizingMaskIntoConstraints = false
        walletDescriptionForTransfer.text = "Cüzdandan Cüzdana Para Transferi"
        walletDescriptionForTransfer.textColor = .black
        walletDescriptionForTransfer.textAlignment = .left
        walletDescriptionForTransfer.font = .preferredFont(forTextStyle: UIFont.TextStyle.body)
        //walletDescriptionTallLabelForWallet style
        walletDescriptionTallLabelForWallet.translatesAutoresizingMaskIntoConstraints = false
        walletDescriptionTallLabelForWallet.text = "Sadece Pazarama içinde değil, diğer tüm alışverişlerinde de kullanabileceğin yeni bir cüzdan deneyimi!"
        walletDescriptionTallLabelForWallet.textColor = .black
        walletDescriptionTallLabelForWallet.font = .systemFont(ofSize: 12)
        walletDescriptionTallLabelForWallet.numberOfLines = 2
        //walletDescriptionTallLabelForTransfer style
        walletDescriptionTallLabelForTransfer.translatesAutoresizingMaskIntoConstraints = false
        walletDescriptionTallLabelForTransfer.text = "Cüzdanınızdaki bakiyenizden hızlı ve kolayca başka bir Pazarama Cüzdana Para Transferi yapabilirsiniz."
        walletDescriptionTallLabelForTransfer.textColor = .black
        walletDescriptionTallLabelForTransfer.font = .systemFont(ofSize: 12)
        walletDescriptionTallLabelForTransfer.numberOfLines = 2
        
    }
    
    
    private func layout(){
        view.addSubview(walletImageView)
        walletImageView.addSubview(pazaramaWelcomeLabel)
        walletImageView.addSubview(campaingInWallet)
        view.addSubview(createWalletButton)
        walletImageView.addSubview(descriptionForWallet)
        view.addSubview(whatIsTheWallet)
        view.addSubview(descriptionUIView)
        view.addSubview(descriptionUIView2)
        descriptionUIView.addSubview(walletIconForWallet)
        descriptionUIView2.addSubview(walletIconForTransfer)
        descriptionUIView.addSubview(walletDescriptionForWallet)
        descriptionUIView2.addSubview(walletDescriptionForTransfer)
        descriptionUIView.addSubview(walletDescriptionTallLabelForWallet)
        descriptionUIView2.addSubview(walletDescriptionTallLabelForTransfer)
        
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
            //walletIconForWallet layout
            walletIconForWallet.topAnchor.constraint(equalTo: descriptionUIView.topAnchor, constant: 15),
            walletIconForWallet.leadingAnchor.constraint(equalTo: descriptionUIView.leadingAnchor, constant: 15),
            walletIconForWallet.widthAnchor.constraint(equalToConstant: 38),
            walletIconForWallet.heightAnchor.constraint(equalToConstant: 32),
            //walletIconForTransfer layout
            walletIconForTransfer.topAnchor.constraint(equalTo: descriptionUIView2.topAnchor, constant: 15),
            walletIconForTransfer.leadingAnchor.constraint(equalTo: descriptionUIView2.leadingAnchor, constant: 15),
            walletIconForTransfer.widthAnchor.constraint(equalToConstant: 32),
            walletIconForTransfer.heightAnchor.constraint(equalToConstant: 32),
            //walletDescriptionForWallet layout
            walletDescriptionForWallet.leadingAnchor.constraint(equalTo: walletIconForWallet.trailingAnchor, constant: 8),
            walletDescriptionForWallet.topAnchor.constraint(equalTo: walletIconForWallet.topAnchor, constant: 8),
            //walletDescriptionForTransfer layout
            walletDescriptionForTransfer.leadingAnchor.constraint(equalTo: walletIconForTransfer.trailingAnchor, constant: 8),
            walletDescriptionForTransfer.topAnchor.constraint(equalTo: walletIconForTransfer.topAnchor, constant: 8),
            //walletDescriptionTallLabelForWallet layout
            walletDescriptionTallLabelForWallet.topAnchor.constraint(equalTo: walletIconForWallet.bottomAnchor, constant: 10),
            walletDescriptionTallLabelForWallet.leadingAnchor.constraint(equalTo: walletIconForWallet.leadingAnchor),
            walletDescriptionTallLabelForWallet.trailingAnchor.constraint(equalTo: descriptionUIView.trailingAnchor,constant: -8),
            //walletDescriptionTallLabelForTransfer layout
            walletDescriptionTallLabelForTransfer.topAnchor.constraint(equalTo: walletIconForTransfer.bottomAnchor, constant: 10),
            walletDescriptionTallLabelForTransfer.leadingAnchor.constraint(equalTo: walletIconForTransfer.leadingAnchor),
            walletDescriptionTallLabelForTransfer.trailingAnchor.constraint(equalTo: descriptionUIView2.trailingAnchor,constant: -8),
        ])
        
    }
    
}
