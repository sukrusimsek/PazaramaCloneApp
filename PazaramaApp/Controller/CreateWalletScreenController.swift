//
//  CreateWalletScreenController.swift
//  PazaramaApp
//
//  Created by Şükrü Şimşek on 4.10.2023.
//

import UIKit

class CreateWalletScreenController: UIViewController,UITextFieldDelegate {
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
        createDatePicker()
        
        view.backgroundColor = .white
        
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
        //textViewsStackView style
        textFieldsStackView.translatesAutoresizingMaskIntoConstraints = false
        textFieldsStackView.axis = .vertical
        textFieldsStackView.spacing = 12
        textFieldsStackView.alignment = .center
        textFieldsStackView.distribution = .fillEqually
        textFieldsStackView.backgroundColor = .clear
        
        //nameTextField style
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.layer.cornerRadius = 10
        nameTextField.clipsToBounds = false
        nameTextField.placeholder = "Adınız"
        nameTextField.layer.borderWidth = 0.5
        nameTextField.borderStyle = .roundedRect
        nameTextField.keyboardType = .default
        nameTextField.layer.borderColor = UIColor.systemGray.cgColor
        //surnameTextField style
        surnameTextField.translatesAutoresizingMaskIntoConstraints = false
        surnameTextField.layer.cornerRadius = 10
        surnameTextField.clipsToBounds = false
        surnameTextField.placeholder = "Soyadınız"
        surnameTextField.borderStyle = .roundedRect
        surnameTextField.layer.borderWidth = 0.5
        surnameTextField.keyboardType = .default
        surnameTextField.layer.borderColor = UIColor.systemGray.cgColor
        
        //citizenshipNumberTextField style
        citizenshipNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        citizenshipNumberTextField.placeholder = "T.C. Kimlik Numaranız"
        citizenshipNumberTextField.borderStyle = .roundedRect
        citizenshipNumberTextField.keyboardType = .numberPad
        citizenshipNumberTextField.layer.cornerRadius = 10
        citizenshipNumberTextField.clipsToBounds = false
        citizenshipNumberTextField.layer.borderWidth = 0.5
        citizenshipNumberTextField.layer.borderColor = UIColor.systemGray.cgColor
        //citizenshipNumberTextField.delegate?.textField(citizenshipNumberTextField, shouldChangeCharactersIn: NSRange, replacementString: String)

        //birthdayTextField style
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        birthdayTextField.placeholder = "Doğum Tarihiniz"
        birthdayTextField.borderStyle = .roundedRect
        birthdayTextField.layer.cornerRadius = 10
        birthdayTextField.clipsToBounds = false
        birthdayTextField.layer.borderWidth = 0.5
        birthdayTextField.layer.borderColor = UIColor.systemGray.cgColor

        //jobsTextField style
        jobsTextField.translatesAutoresizingMaskIntoConstraints = false
        jobsTextField.placeholder = "Meslek"
        jobsTextField.borderStyle = .roundedRect
        jobsTextField.keyboardType = .default
        jobsTextField.layer.cornerRadius = 10
        jobsTextField.clipsToBounds = false
        jobsTextField.layer.borderWidth = 0.5
        jobsTextField.layer.borderColor = UIColor.systemGray.cgColor

        //phoneNumberTextField style
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.placeholder = "Telefon Numarası"
        phoneNumberTextField.borderStyle = .roundedRect
        phoneNumberTextField.keyboardType = .numberPad
        phoneNumberTextField.layer.cornerRadius = 10
        phoneNumberTextField.clipsToBounds = false
        phoneNumberTextField.layer.borderWidth = 0.5
        phoneNumberTextField.layer.borderColor = UIColor.systemGray.cgColor
        //userAgreementCheckBoxButton style
        userAgreementCheckBoxButton.translatesAutoresizingMaskIntoConstraints = false
        userAgreementCheckBoxButton.setImage(UIImage(systemName: "square"), for: .normal)
        userAgreementCheckBoxButton.contentMode = .scaleAspectFit
        userAgreementCheckBoxButton.tintColor = UIColor.black
        
        
        //walletAgreementCheckBoxButton style
        walletAgreementCheckBoxButton.translatesAutoresizingMaskIntoConstraints = false
        walletAgreementCheckBoxButton.setImage(UIImage(systemName: "square"), for: .normal)
        walletAgreementCheckBoxButton.contentMode = .scaleAspectFit
        walletAgreementCheckBoxButton.tintColor = UIColor.black

        //userAgreementLabel style
        userAgreementLabel.translatesAutoresizingMaskIntoConstraints = false
        userAgreementLabel.text = "Kullanıcı Cüzdan Sözleşmesi'ni okudum ve onaylıyorum."
        userAgreementLabel.font = .systemFont(ofSize: 12)
        userAgreementLabel.textAlignment = .left
        userAgreementLabel.textColor = .black
        

        //walletAgreementLabel style
        walletAgreementLabel.translatesAutoresizingMaskIntoConstraints = false
        walletAgreementLabel.text = "Cüzdan Sözleşme Bilgilendirme Formu'nu okudum ve onaylıyorum."
        walletAgreementLabel.numberOfLines = 2
        walletAgreementLabel.font = .systemFont(ofSize: 12)
        walletAgreementLabel.textAlignment = .left
        walletAgreementLabel.textColor = .black
        //createWalletFinishButton style
        createWalletFinishButton.translatesAutoresizingMaskIntoConstraints = false
        //createWalletFinishButton.setTitle("Cüzdan Oluştur", for: .normal)
        createWalletFinishButton.backgroundColor = UIColor(rgb: 0xB4B4B3)
        //createWalletFinishButton.tintColor = .gray
        createWalletFinishButton.setTitle("Cüzdan Oluştur", for: .normal)
        createWalletFinishButton.titleLabel?.textColor = .black
        createWalletFinishButton.layer.cornerRadius = 10
        createWalletFinishButton.layer.masksToBounds = true
        
    }
    /*func textFields(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text as NSString? {
            let txtAfterUpdate = text.replacingCharacters(in: range, with: string)
            textField.text = txtAfterUpdate
        }
        return false
    }*/
    
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
        birthdayTextField.textAlignment = .left
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
        textFieldsStackView.addArrangedSubview(nameTextField)
        textFieldsStackView.addArrangedSubview(surnameTextField)
        textFieldsStackView.addArrangedSubview(citizenshipNumberTextField)
        textFieldsStackView.addArrangedSubview(birthdayTextField)
        textFieldsStackView.addArrangedSubview(jobsTextField)
        textFieldsStackView.addArrangedSubview(phoneNumberTextField)
        view.addSubview(userAgreementCheckBoxButton)
        view.addSubview(walletAgreementCheckBoxButton)
        view.addSubview(userAgreementLabel)
        view.addSubview(walletAgreementLabel)
        view.addSubview(createWalletFinishButton)
        
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
            textFieldsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -200),
            
            //textFieldsStackView layout for components
            nameTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            surnameTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            surnameTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            citizenshipNumberTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            citizenshipNumberTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            birthdayTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            birthdayTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            jobsTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            jobsTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: textFieldsStackView.trailingAnchor),
            
            //userAgreementCheckBoxButton layout
            userAgreementCheckBoxButton.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 30),
            userAgreementCheckBoxButton.leadingAnchor.constraint(equalTo: textFieldsStackView.leadingAnchor,constant: 8),
            
            
            //walletAgreementCheckBoxButton layout
            walletAgreementCheckBoxButton.topAnchor.constraint(equalTo: userAgreementCheckBoxButton.bottomAnchor, constant: 16),
            walletAgreementCheckBoxButton.leadingAnchor.constraint(equalTo: userAgreementCheckBoxButton.leadingAnchor),
            
            //userAgreementLabel layout
            userAgreementLabel.topAnchor.constraint(equalTo: userAgreementCheckBoxButton.topAnchor),
            userAgreementLabel.leadingAnchor.constraint(equalTo: userAgreementCheckBoxButton.trailingAnchor,constant: 16),
            userAgreementLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),

            //walletAgreementLabel layout
            walletAgreementLabel.topAnchor.constraint(equalTo: walletAgreementCheckBoxButton.topAnchor),
            walletAgreementLabel.leadingAnchor.constraint(equalTo: walletAgreementCheckBoxButton.trailingAnchor,constant: 16),
            walletAgreementLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            //createWalletFinishButton layout
            createWalletFinishButton.topAnchor.constraint(equalTo: walletAgreementLabel.bottomAnchor, constant: 30),
            createWalletFinishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            createWalletFinishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            createWalletFinishButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
        ])
    }
}
