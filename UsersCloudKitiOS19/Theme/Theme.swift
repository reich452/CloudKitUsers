//
//  Theme.swift
//  UsersCloudKitiOS19
//
//  Created by Nick Reichard on 6/12/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

extension UIView {
    
    /*
     Adds a vertical gradient layer with two **UIColors** to the **UIView**.
     - Parameter topColor: The top **UIColor**.
     - Parameter bottomColor: The bottom **UIColor**.
     */
    
    func addVerticalGradientLayer(topColor:UIColor, bottomColor:UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [
            topColor.cgColor,
            bottomColor.cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
}

extension UIColor {
    
    // computed property
    
    static var primaryColor: UIColor {
        return UIColor(red: 210/255, green: 109/255, blue: 180/255, alpha: 1)
    }
    
    // static constant - does the exact same thing ^
    static let secondaryColor = UIColor(red: 52/255, green: 148/255, blue: 230/255, alpha: 1)
}

// This makes it so we can acutally see it in the storyboard 
@IBDesignable
class CustomUserTextField: UITextField {
    
    // IB stands for interface buider - this makes it so we can add or change things in the story boards
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var boarderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = boarderWidth
        }
    }
    
    @IBInspectable var boarderColor: UIColor? {
        didSet {
            layer.borderColor = boarderColor?.cgColor
        }
    }
}


class CustomUserButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var boarderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = boarderWidth
        }
    }
    
    @IBInspectable var boarderColor: UIColor? {
        didSet {
            layer.borderColor = boarderColor?.cgColor
        }
    }
}
