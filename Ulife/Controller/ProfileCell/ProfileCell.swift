//
//  ProfileCell.swift
//  Ulife
//
//  Created by Henrique Marques on 08/12/22.
//

import UIKit

class ProfileCell: UITableViewCell {

    static let identifier = "ProfileCell"
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Financeiro"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .label
        label.textAlignment = .left
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Financeiro"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .secondaryLabel
        label.textAlignment = .right
        return label
    }()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension ProfileCell: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .secondarySystemBackground
    }
    
    func buildViews() {
        self.addSubview(self.nameLabel)
        self.addSubview(self.descriptionLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            
            self.nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 50),
            self.nameLabel.widthAnchor.constraint(equalToConstant: 48),
            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),

            self.descriptionLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -25),
            
        
        ])
    }
    
    
}

