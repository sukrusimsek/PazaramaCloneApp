//
//  CampaignController.swift
//  TabBarController
//
//  Created by Şükrü Şimşek on 23.09.2023.
//

import UIKit

class CampaignController: UIViewController {
    //MARK: - Properties
    let images = ["1","2","3","4","5","6","7"]
    
    var collectionView: UICollectionView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        //super.viewDidLoad()
        view.backgroundColor = .white
        layout2()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        
    }
}

    //MARK: - Helpers
extension CampaignController {
    private func layout2() {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
extension CampaignController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: view.frame.height/5)
    }
    
}
extension CampaignController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.imageImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Detay Sayfasına Gidilecek \(indexPath.row)")
    }
}
class CustomCell: UICollectionViewCell {
    let imageImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageImageView)
        imageImageView.translatesAutoresizingMaskIntoConstraints = false
        imageImageView.layer.cornerRadius = 10
        imageImageView.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            imageImageView.topAnchor.constraint(equalTo: topAnchor),
            imageImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
