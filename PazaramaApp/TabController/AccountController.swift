//
//  AccountController.swift
//  TabBarController
//
//  Created by Şükrü Şimşek on 23.09.2023.
//

import UIKit

class AccountController: UIViewController {
    //MARK: - Properties
    private let accountName = UILabel()
    private let myBox = UIButton()
    private let favoriteProductsButton = UIButton()
    let tableView = UITableView()
    var itemsToLoad = [["Siparişlerim", "Taleplerim", "Beğendiklerim","Kuponlarım","Puanlarım","Değerlendirmelerim"],
                       ["Kişisel Bilgilerim","Adreslerim","Kayıtlı Kartlarım","Şifremi Değiştir","Sözleşmelerim"],
                       ["İletişim İzinleri","Müşteri Hizmetleri"]
    ]
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        
    }
}
   
    //MARK: - Helpers
extension AccountController{
    private func style(){
        accountName.translatesAutoresizingMaskIntoConstraints = false
        accountName.text = "Hesabım"
        accountName.font = .boldSystemFont(ofSize: 28)
        accountName.textColor = .black

        
        myBox.translatesAutoresizingMaskIntoConstraints = false
        myBox.setImage(UIImage(systemName: "cart"), for: .normal)
        myBox.tintColor = .black
        
        favoriteProductsButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteProductsButton.setImage(UIImage(named: "favoriteProductsIcon"), for: .normal)
        favoriteProductsButton.tintColor = .black
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    private func layout(){
        view.addSubview(accountName)
        view.addSubview(favoriteProductsButton)
        view.addSubview(myBox)
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            
            accountName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            accountName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            accountName.trailingAnchor.constraint(equalTo: myBox.leadingAnchor, constant: 40),
            
            myBox.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            myBox.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            myBox.leadingAnchor.constraint(equalTo: accountName.trailingAnchor, constant: -40),
            myBox.widthAnchor.constraint(equalToConstant: 24),
            myBox.heightAnchor.constraint(equalToConstant: 24),
            
            favoriteProductsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            favoriteProductsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            favoriteProductsButton.leadingAnchor.constraint(equalTo: myBox.trailingAnchor, constant: 30),
            favoriteProductsButton.widthAnchor.constraint(equalToConstant: 24),
            favoriteProductsButton.heightAnchor.constraint(equalToConstant: 24),
            
            tableView.topAnchor.constraint(equalTo: accountName.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
    }
}
extension AccountController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
               
                return 6
            case 1:
                
                return 5
            case 2:
               
                return 2
            default:
                return 0
            }
        //return itemsToLoad[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemsToLoad[indexPath.section][indexPath.row]
        cell.backgroundColor = .lightGray
        return cell
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let headerView = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
        let label1 = UILabel()
        label1.frame = CGRect(x: 16, y: 5, width: headerView.frame.width-32, height: 15)
        label1.text = self.tableView(tableView, titleForHeaderInSection: section)
        label1.font = .systemFont(ofSize: 18)
        label1.textColor = .black
        headerView.addSubview(label1)
        
        
        
        
        return headerView
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Şükrü Şimşek"
        case 1:
            return "Hesap Ayarları"
        case 2:
            return "Kişiselleştirme"
        default:
            return nil
        }
    }
    
}
    
