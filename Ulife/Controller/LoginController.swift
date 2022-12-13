//
//  LoginController.swift
//  Ulife
//
//  Created by Henrique Marques on 11/12/22.
//

import UIKit

class LoginController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
    }

    
    
}

extension LoginController: LoginScreenProtocol {
    
    func ajudaButtonAction() {
        if let url = URL(string: "https://portal.anhembi.br/fale-com-a-gente/?gclid=Cj0KCQiAnNacBhDvARIsABnDa69bHMObYbWC_BQEtUqYSImUxYqTuGUvLcxSUQkaNdU8msq2lT5x3noaAlRAEALw_wcB") {
            UIApplication.shared.open(url)
        }
    }
    
    func loginButtonAction() {
        let vc = TabBarController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
}
