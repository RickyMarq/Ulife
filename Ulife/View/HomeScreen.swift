//
//  HomeScreen.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func profileButtonAction()
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    
    func delegate(delegate: HomeScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .clear
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 20
        image.layer.borderWidth = 0.25
        image.layer.borderColor = UIColor.lightGray.cgColor
        image.image = UIImage(named: "Profile")
        image.clipsToBounds = true
        return image
    }()
    
    lazy var profileButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        let img = UIImage(named: "Profile")
        btn.setImage(img?.withRenderingMode(.alwaysOriginal), for: .normal)
        btn.imageView?.contentMode = .scaleToFill
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
    //     btn.layer.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
    //    btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return btn
    }()
        
        
    lazy var homeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout.init()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = .zero
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 15
        collectionView.alwaysBounceVertical = true
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.backgroundColor = .systemBackground
        collectionView.showsVerticalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 16 , left: 0, bottom: 16, right: 0)
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: HomeCell.identifier)
        return collectionView
    }()
    
    public func configHomeCollectionViewProtocols(delegate: UICollectionViewDelegate, dataSouce: UICollectionViewDataSource) {
        self.homeCollectionView.dataSource = dataSouce
        self.homeCollectionView.delegate = delegate
    }
    
    @objc func profileButtonTapped() {
        self.delegate?.profileButtonAction()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    

}

extension HomeScreen: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .systemBackground
    }
    
    func buildViews() {
        self.addSubview(self.homeCollectionView)
        self.addSubview(self.userImageView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.homeCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            self.homeCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.homeCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.homeCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
            self.userImageView.heightAnchor.constraint(equalToConstant: 44),
            self.userImageView.widthAnchor.constraint(equalToConstant: 44),
            self.userImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8.0),
            
            self.profileButton.heightAnchor.constraint(equalToConstant: 40),
            self.profileButton.widthAnchor.constraint(equalToConstant: 40),
          
        ])
    }
    
    
}
