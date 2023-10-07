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
    var itemsToLoad: [String] = ["Siparişlerim", "Taleplerim", "Beğendiklerim","Kuponlarım","Puanlarım","Değerlendirmelerim"]
    
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
            
            tableView.topAnchor.constraint(equalTo: accountName.bottomAnchor, constant: 8),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
    }
}
extension AccountController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsToLoad.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = itemsToLoad[indexPath.row]
            return cell
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
}
    
