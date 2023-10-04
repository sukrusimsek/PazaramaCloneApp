//
//  CreateWalletScreenController.swift
//  PazaramaApp
//
//  Created by Şükrü Şimşek on 4.10.2023.
//

import UIKit

class CreateWalletScreenController: UIViewController {
    //MARK: - Properties
    private let createWalletLabel = UILabel()
    private let createWalletDescriptionLabel = UILabel()
    private let closeButtonForWalletScreen = UIButton(type: .close)
    private let textFieldsStackView = UIStackView()
    private let nameTextField = UITextField()
    private let surnameTextField = UITextField()
    private let citizenshipNumberTextField = UITextField()
    private let datePicker = UIDatePicker()

    private let birthdayTextField = UITextField()
    private let jobsTextField = UITextField()
    private let phoneNumberTextField = UITextField()
    
    private let userAgreementCheckBoxButton = UIButton()
    private let walletAgreementCheckBoxButton = UIButton()
    private let userAgreementLabel = UILabel()
    private let walletAgreementLabel = UILabel()
    private let createWalletFinishButton = UIButton()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        view.backgroundColor = .blue
        
        
    }
}

    //MARK: - Helpers
extension CreateWalletScreenController {
    private func style(){
        //createWalletLabel style
        createWalletLabel.translatesAutoresizingMaskIntoConstraints = false
        createWalletLabel.text = "Cüzdan Oluştur"
        createWalletLabel.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        createWalletLabel.textColor = .black
        createWalletLabel.textAlignment = .center
        //createWalletDescriptionLabel style
        createWalletDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        createWalletDescriptionLabel.text = "Kayıtlı bilgileriniz ile cüzdanınızı oluşturacağız. Lütfen bilgilerin doğruluğunu kontrol edin."
        createWalletDescriptionLabel.numberOfLines = 3
        createWalletDescriptionLabel.font = .systemFont(ofSize: 15)
        createWalletDescriptionLabel.textColor = .black
        createWalletDescriptionLabel.textAlignment = .center
        //closeButtonForWalletScreen style
        closeButtonForWalletScreen.translatesAutoresizingMaskIntoConstraints = false
        closeButtonForWalletScreen.setImage(UIImage(systemName: "xmark"), for: UIControl.State.normal)
        closeButtonForWalletScreen.tintColor = UIColor(rgb: 0xd9d9d9)
        //textViewsStackView style
        textFieldsStackView.translatesAutoresizingMaskIntoConstraints = false
        textFieldsStackView.axis = .vertical
        textFieldsStackView.spacing = 10
        textFieldsStackView.alignment = .center
        textFieldsStackView.distribution = .equalSpacing
        textFieldsStackView.backgroundColor = .brown
        
        //nameTextField style
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.placeholder = "Adınız"
        nameTextField.borderStyle = .bezel
        nameTextField.keyboardType = .default
        
        //surnameTextField style
        surnameTextField.translatesAutoresizingMaskIntoConstraints = false
        surnameTextField.placeholder = "Soyadınız"
        surnameTextField.borderStyle = .bezel
        surnameTextField.keyboardType = .default
        
        //citizenshipNumberTextField style
        citizenshipNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        citizenshipNumberTextField.placeholder = "T.C. Kimlik Numaranız"
        citizenshipNumberTextField.borderStyle = .bezel
        citizenshipNumberTextField.keyboardType = .numberPad
        
        //birthdayTextField style
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        birthdayTextField.placeholder = "Doğum Tarihiniz"
        birthdayTextField.borderStyle = .bezel
        
        //jobsTextField style
        
        //phoneNumberTextField style
        
    }
    func createToolBar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        return toolbar
        
    }
    func createDatePicker() {
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        birthdayTextField.textAlignment = .center
        birthdayTextField.inputView = datePicker
        birthdayTextField.inputAccessoryView = createToolBar()
    }
    @objc func donePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        self.birthdayTextField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    private func layout(){
        view.addSubview(createWalletLabel)
        view.addSubview(createWalletDescriptionLabel)
        view.addSubview(closeButtonForWalletScreen)
        view.addSubview(textFieldsStackView)
        
        NSLayoutConstraint.activate([
            //createWalletLabel layout
            createWalletLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            createWalletLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //createWalletDescriptionLabel layout
            createWalletDescriptionLabel.topAnchor.constraint(equalTo: createWalletLabel.bottomAnchor, constant: 8),
            createWalletDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createWalletDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            createWalletDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            //closeButtonForWalletScreen layout
            closeButtonForWalletScreen.topAnchor.constraint(equalTo: createWalletLabel.topAnchor),
            closeButtonForWalletScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            //textViewsStackView layout
            textFieldsStackView.topAnchor.constraint(equalTo: createWalletDescriptionLabel.bottomAnchor, constant: 8),
            textFieldsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            textFieldsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            textFieldsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -150),
            
        ])
    }
}
