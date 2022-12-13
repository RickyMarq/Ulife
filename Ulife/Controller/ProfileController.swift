//
//  ProfileController.swift
//  Ulife
//
//  Created by Henrique Marques on 08/12/22.
//

import UIKit

class ProfileController: UIViewController {
    
    var profileScreen: ProfileScreen?
    
    var mock: [ProfileMock] = [ProfileMock(name: "Nome", description: "Henrique Marques"),
                               ProfileMock(name: "RA", description: "12522135201"),
                               ProfileMock(name: "Curso", description: "ADS"),
                               ProfileMock(name: "Tel", description: "+ 55 (11) 95815-1049"),
                               
    ]
    
    override func loadView() {
        self.profileScreen = ProfileScreen()
        self.view = profileScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileScreen?.configConfigsTableViewProtocols(delegate: self, dataSource: self)


    }
    


}

extension ProfileController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return mock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProfileCell? = tableView.dequeueReusableCell(withIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell
        let ov = mock[indexPath.row]
        cell?.nameLabel.text = ov.name
        cell?.descriptionLabel.text = ov.description
        return cell ?? UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Minha Conta"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
