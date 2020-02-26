//
//  UILabel+Extension.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// Return label with app title style
    ///
    /// - Parameters:
    ///   - text: String
    ///   - color: UIColor
    func titleLabel(withText text: String, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont(name: "Avenir-Light", size: 36.0)
        label.textColor = color
        return label
    }
    
}
