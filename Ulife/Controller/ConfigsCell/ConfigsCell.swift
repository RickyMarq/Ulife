//
//  ConfigsCell.swift
//  Ulife
//
//  Created by Henrique Marques on 08/12/22.
//

import UIKit

class ConfigsCell: UITableViewCell {
    
    static let identifier = "ConfigsCell"
    
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
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension ConfigsCell: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .secondarySystemBackground
    }
    
    func buildViews() {
        self.addSubview(self.image)
        self.addSubview(self.nameLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.image.heightAnchor.constraint(equalToConstant: 10),
            self.image.widthAnchor.constraint(equalToConstant: 25),
            self.image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
           // self.image.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.nameLabel.leftAnchor.constraint(equalTo: self.image.rightAnchor, constant: 10),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 50),
            self.nameLabel.widthAnchor.constraint(equalToConstant: 25),
            self.nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

        
        ])
    }
    
    public func configure(with model: SettingsOption){
        nameLabel.text = model.title
        image.image = model.icon
        image.backgroundColor = model.iconBackgroungColor
    }
    
    
}
