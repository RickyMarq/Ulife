//
//  InformationScreen.swift
//  Ulife
//
//  Created by Henrique Marques on 11/12/22.
//

import UIKit

class InformationScreen: UIView {
    
    lazy var informationTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemBackground
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        tableView.register(InformationCell.self, forCellReuseIdentifier: InformationCell.identifier)
        return tableView
    }()
    
    public func informationTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.informationTableView.delegate = delegate
        self.informationTableView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension InformationScreen: ViewConfiguration {
   
    func configViews() {
        self.backgroundColor = .systemBackground
    }
    
    func buildViews() {
        self.addSubview(informationTableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.informationTableView.topAnchor.constraint(equalTo: self.topAnchor),
            self.informationTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.informationTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.informationTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
    
}
