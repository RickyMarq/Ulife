//
//  ViewController.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import UIKit

class HomeController: UIViewController {
    
    var homeScreen: HomeScreen?
    var objc: [Mock] = [Mock(name: "UCs", image: "80120", content1: "Modelagem de Software", content2: "Modelagem                 de Software"),
                        
                        Mock(name: "Faltas", image: "79729 (1)", content1: "Sistemas Computacionais e Segurança", content2: "Modelagem de Software"),
                        
                        Mock(name: "Financeiro", image: "79970", content1: "Boleto de Novembro", content2: "Boleto de Dezembro"),
                        
                        Mock(name: "Notas", image: "79884", content1: "Notas: Sistemas Computacionais e Segurança", content2: "Notas: Modelagem de Software"),
                        
                        Mock(name: "Falar Com Professor", image: "80068", content1: "", content2: ""),
                        
                        Mock(name: "Ajuda", image: "79916", content1: "", content2: ""),
    ]
    
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configNavigationController()
        self.homeScreen?.configHomeCollectionViewProtocols(delegate: self, dataSouce: self)
        self.homeScreen?.delegate(delegate: self)
        
    }
    
    
    func configNavigationController() {
        self.title = "Home"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let itemBtn = UIBarButtonItem(customView: self.homeScreen!.profileButton)
        self.navigationItem.setRightBarButtonItems([itemBtn], animated: true)
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = .secondarySystemBackground
            appearance.titleTextAttributes = [.foregroundColor: UIColor.label]
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.label]

            navigationController?.navigationBar.tintColor = .black
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

}

extension HomeController: HomeScreenProtocol {
   
    func profileButtonAction() {
        let vc = ProfileController()
        self.present(vc, animated: true)
    }
    
}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objc.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HomeCell? = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.identifier, for: indexPath) as? HomeCell
        let ob = objc[indexPath.row]
        cell?.nameLabel.text = ob.name
        
        cell?.image.image = UIImage(named: ob.image)

        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = InformationController(model: objc[indexPath.item])
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          let leftAndRightPaddings: CGFloat = 15
          let numberOfItemsPerRow: CGFloat = 2.0
      
          let width = (collectionView.frame.width-leftAndRightPaddings)/numberOfItemsPerRow
          return CGSize(width: width, height: 200)
      
    }
    
    
}
