//
//  UIView+Extension.swift
//  UberSkills
//
//  Created by Marcin Pietrzak on 26/02/2020.
//  Copyright © 2020 Marcin Pietrzak. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Return input container view
    ///
    /// - Parameters:
    ///   - image: UIImage
    ///   - textField: UITextField
    func inputContainerView(image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.alpha = 0.87
        
        view.addSubview(imageView)
        imageView.centerY(inView: view)
        imageView.anchor(left: view.leftAnchor, paddingLeft: 8.0, width: 32.0, height: 32.0)
        
        view.addSubview(textField)
        textField.centerY(inView: view)
        textField.anchor(left: imageView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8.0, paddingBottom: 8.0)
        
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        view.addSubview(separatorView)
        separatorView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8.0, height: 0.75)
        
        return view
    }
    
    /// Add constraint to view
    ///
    /// - Parameters:
    ///   - top: NSLayoutYAxisAnchor? = nil
    ///   - left: NSLayoutXAxisAnchor? = nil
    ///   - bottom: NSLayoutYAxisAnchor? = nil
    ///   - right: NSLayoutXAxisAnchor? = nil
    ///   - paddingTop: CGFloat = 0
    ///   - paddingLeft: CGFloat = 0
    ///   - paddingBottom: CGFloat = 0
    ///   - paddingRight: CGFloat = 0
    ///   - width: CGFloat? = nil
    ///   - height: CGFloat? = nil
    func anchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, paddingTop: CGFloat = 0, paddingLeft: CGFloat = 0, paddingBottom: CGFloat = 0, paddingRight: CGFloat = 0, width: CGFloat? = nil, height: CGFloat? = nil) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    /// Center view X in view
    ///
    /// - Parameter view: UIView
    func centerX(inView view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    /// Center view Y in view
    ///
    /// - Parameter view: UIView
    func centerY(inView view: UIView) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
