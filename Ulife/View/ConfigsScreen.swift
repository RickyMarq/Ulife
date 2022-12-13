//
//  ConfigsScreen.swift
//  Ulife
//
//  Created by Henrique Marques on 08/12/22.
//

import UIKit

class ConfigsScreen: UIView {
    
    lazy var configsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemBackground
        tableView.contentInset = UIEdgeInsets(top: 25 , left: 0, bottom: 0, right: 0)
        tableView.register(ConfigsCell.self, forCellReuseIdentifier: ConfigsCell.identifier)
        return tableView
    }()
    
    public func configConfigsTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.configsTableView.delegate = delegate
        self.configsTableView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension ConfigsScreen: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .systemBackground
    }
    
    func buildViews() {
        self.addSubview(self.configsTableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.configsTableView.topAnchor.constraint(equalTo: self.topAnchor),
            self.configsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.configsTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.configsTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
    
}
