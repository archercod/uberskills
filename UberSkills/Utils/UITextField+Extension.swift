//
//  UITextField+Extension.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

extension UITextField {
    
    /// Configure UITextField
    ///
    /// - Parameters:
    ///   - placeholder: String
    ///   - isSecureTextEntry: Bool
    ///   - type: UIKeyboardType
    func textField(withPlaceholder placeholder: String, isSecureTextEntry: Bool, keyboardType type: UIKeyboardType) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 16.0)
        textField.textColor = .white
        textField.keyboardAppearance = .dark
        textField.keyboardType = type
        textField.isSecureTextEntry = isSecureTextEntry
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        return textField
    }
    
}
