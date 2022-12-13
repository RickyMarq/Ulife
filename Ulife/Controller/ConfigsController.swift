//
//  ConfigsController.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import UIKit

class ConfigsController: UIViewController {
            
    var configsScreen: ConfigsScreen?
        
    var mock: [ConfigMock] = [ConfigMock(name: "Política de Privacidade", emoji: "doc.badge.gearshape"),
                            ConfigMock(name: "Termos & Condições", emoji: "doc.badge.gearshape")]
    
    var sobreMock: [MockSobreApp] = [MockSobreApp(name: "App", emoji: "Gear"),
                                    MockSobreApp(name: "Compatibilidade", emoji: "iphone.gen2"),
                                    MockSobreApp(name: "Versão Atual", emoji: "flag")]
    
    var teste = SettingsModel().createModels()
    
    override func loadView() {
        self.configsScreen = ConfigsScreen()
        self.view = configsScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNavigationController()
        self.configsScreen?.configConfigsTableViewProtocols(delegate: self, dataSource: self)

    }
    
    func configNavigationController() {
        self.title = "Configurações"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
   
    
}

extension ConfigsController: UITableViewDelegate, UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return mock.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ConfigsCell? = tableView.dequeueReusableCell(withIdentifier: ConfigsCell.identifier, for: indexPath) as? ConfigsCell
        let model = mock[indexPath.row]
        cell?.nameLabel.text = model.name
        cell?.image.image = UIImage(named: model.emoji)
        return cell ?? UITableViewCell()
    }
    
   
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let section = mock[section]
//        return section.title
//    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
