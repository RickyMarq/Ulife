//
//  HomeCell.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    static let identifier = "HomeCell"
    
    lazy var image: UIImageView = {
        let image = UIImage(systemName: "gear")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
//        imageView.layer.masksToBounds = true
//        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Financeiro"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension HomeCell: ViewConfiguration {
    
    func configViews() {
        self.layer.cornerRadius = 7
        self.backgroundColor = .secondarySystemBackground
  //      self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 0.0
        self.layer.shadowColor = UIColor.systemGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowRadius = 0.5
        self.layer.shadowOpacity = 0.5
    }
    
    func buildViews() {
        self.addSubview(self.image)
        self.addSubview(self.nameLabel)

    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.image.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.image.heightAnchor.constraint(equalToConstant: 120),
        
            self.nameLabel.topAnchor.constraint(equalTo: self.image.bottomAnchor, constant: 10),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    
}
