//
//  ProfileScreen.swift
//  Ulife
//
//  Created by Henrique Marques on 08/12/22.
//

import UIKit

class ProfileScreen: UIView {
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Perfil"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .label
        label.font = UIFont.boldSystemFont(ofSize: 46)
        label.textAlignment = .left
        return label
    }()
    
    lazy var cursoLabel: UILabel = {
        let label = UILabel()
        label.text = "Análise e Desenvolvimento \n de Sistemas"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .label
        label.textAlignment = .left
        return label
    }()
    
    lazy var image: UIImageView = {
        let image = UIImage(named: "Profile")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 0.25
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 46
        return imageView
    }()
    
    
    lazy var profileTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemBackground
        tableView.contentInset = UIEdgeInsets(top: 25 , left: 0, bottom: 0, right: 0)
        tableView.register(ProfileCell.self, forCellReuseIdentifier: ProfileCell.identifier)
        return tableView
    }()
    
    public func configConfigsTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.profileTableView.delegate = delegate
        self.profileTableView.dataSource = dataSource
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension ProfileScreen: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .systemBackground
    }
    
    func buildViews() {
        self.addSubview(self.profileTableView)
        self.addSubview(self.cursoLabel)
        self.addSubview(self.image)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.image.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.image.heightAnchor.constraint(equalToConstant: 100),
            self.image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            self.image.widthAnchor.constraint(equalToConstant: 100),
            
            self.cursoLabel.leftAnchor.constraint(equalTo: self.image.rightAnchor, constant: 15),
            self.cursoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            self.cursoLabel.heightAnchor.constraint(equalToConstant: 50),
            
            self.profileTableView.topAnchor.constraint(equalTo: self.image.bottomAnchor, constant: 10),
            self.profileTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.profileTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.profileTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
}
