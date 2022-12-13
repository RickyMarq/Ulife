//
//  InformationController.swift
//  Ulife
//
//  Created by Henrique Marques on 11/12/22.
//

import UIKit

class InformationController: UIViewController {
    
    var model: Mock
    var informationScreen: InformationScreen?
    
    override func loadView() {
        self.informationScreen = InformationScreen()
        self.view = informationScreen
    }

    init(model: Mock) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = model.name
        self.informationScreen?.informationTableViewProtocols(delegate: self, dataSource: self)
        self.navigationController?.navigationBar.prefersLargeTitles = true

    }
    

 
}

extension InformationController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: InformationCell? = tableView.dequeueReusableCell(withIdentifier: InformationCell.identifier, for: indexPath) as? InformationCell
        cell?.nameLabel.text = model.content1
 //       cell?.secondLabel.text = model.content2
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
