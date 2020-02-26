//
//  UIColor+Extension.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    // MARK: - Main colors
    
    static let backgroundColor = UIColor.rgb(red: 25, green: 25, blue: 25, alpha: 1.0)
    static let mainBlueTint = UIColor.rgb(red: 17, green: 154, blue: 237, alpha: 1.0)
    
}
