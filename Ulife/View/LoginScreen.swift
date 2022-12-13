//
//  LoginScreen.swift
//  Ulife
//
//  Created by Henrique Marques on 11/12/22.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func ajudaButtonAction()
    func loginButtonAction()
}

class LoginScreen: UIView {
    
    weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate: LoginScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var logoImageView: UIImageView = {
        let image = UIImage(named: "Logo")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var raTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Insira seu RA"
        textField.textAlignment = .center
        textField.layer.masksToBounds = true
        textField.keyboardType = .numberPad
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .secondarySystemBackground
        return textField
    }()
    
    lazy var senhaTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Insira sua senha"
        textField.textAlignment = .center
        textField.isSecureTextEntry = true
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 15
        textField.backgroundColor = .secondarySystemBackground
        return textField
    }()
    
    lazy var esqueceuSuaSenhaButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.secondaryLabel, for: .normal)
        button.setTitle("Esqueceu sua Senha ?", for: .normal)
        button.addTarget(self, action: #selector(ajudaButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var ajudaButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Precisa de Ajuda ?", for: .normal)
        button.addTarget(self, action: #selector(ajudaButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func ajudaButtonTapped() {
        self.delegate?.ajudaButtonAction()
    }
    
    @objc func loginButtonTapped() {
        self.delegate?.loginButtonAction()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    

}

extension LoginScreen: ViewConfiguration {
    
    func configViews() {
        self.backgroundColor = .systemBackground
    }
    
    func buildViews() {
        self.addSubview(self.logoImageView)
        self.addSubview(self.raTextField)
        self.addSubview(self.senhaTextField)
        self.addSubview(self.esqueceuSuaSenhaButton)
        self.addSubview(self.loginButton)
        
        self.addSubview(self.ajudaButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 320),
            self.logoImageView.heightAnchor.constraint(equalToConstant: 100),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.raTextField.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 100),
            self.raTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.raTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.raTextField.heightAnchor.constraint(equalToConstant: 50),
            
            self.senhaTextField.topAnchor.constraint(equalTo: self.raTextField.bottomAnchor, constant: 50),
            self.senhaTextField.leadingAnchor.constraint(equalTo: self.raTextField.leadingAnchor),
            self.senhaTextField.trailingAnchor.constraint(equalTo: self.raTextField.trailingAnchor),
            self.senhaTextField.heightAnchor.constraint(equalTo: self.raTextField.heightAnchor),
            
            
            self.esqueceuSuaSenhaButton.topAnchor.constraint(equalTo: self.senhaTextField.bottomAnchor, constant: 5),
            self.esqueceuSuaSenhaButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            
            self.loginButton.topAnchor.constraint(equalTo: self.senhaTextField.bottomAnchor, constant: 70),
            self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            self.loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            
            self.ajudaButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            self.ajudaButton.leadingAnchor.constraint(equalTo: self.senhaTextField.leadingAnchor),
            self.ajudaButton.trailingAnchor.constraint(equalTo: self.senhaTextField.trailingAnchor),
            self.ajudaButton.heightAnchor.constraint(equalTo: self.senhaTextField.heightAnchor),
            
        ])
    }
    
    
}
