//
//  InformationCell.swift
//  Ulife
//
//  Created by Henrique Marques on 11/12/22.
//

import UIKit

class InformationCell: UITableViewCell {
    
    static let identifier = "InformationCell"
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension InformationCell: ViewConfiguration {
    
    func configViews() {
        self.layer.cornerRadius = 7
        self.backgroundColor = .secondarySystemBackground
        self.layer.borderColor = UIColor.systemBackground.cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
    }
    
    func buildViews() {
        self.addSubview(self.nameLabel)
        self.addSubview(self.secondLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 50),
            self.nameLabel.widthAnchor.constraint(equalToConstant: 100),
            self.nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
            self.secondLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10),
            self.secondLabel.heightAnchor.constraint(equalToConstant: 50),
            self.secondLabel.widthAnchor.constraint(equalToConstant: 100),
            self.secondLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
        ])
    }
    
    
}
