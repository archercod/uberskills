//
//  LoginController.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER SKILLS"
        label.font = UIFont(name: "Avenir-Light", size: 36.0)
        label.textColor = UIColor.white.withAlphaComponent(0.8)
        return label
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x"), textField: emailTextField)
        view.anchor(height: 50.0)
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"), textField: passwordTextField)
        view.anchor(height: 50.0)
        return view
    }()
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Email", isSecureTextEntry: false, keyboardType: .emailAddress)
    }()
    
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Password", isSecureTextEntry: true, keyboardType: .default)
    }()
    
    private lazy var inputsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        return stack
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView: view)

        view.addSubview(inputsStackView)
        inputsStackView.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40.0, paddingLeft: 16.0, paddingRight: 16.0)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
