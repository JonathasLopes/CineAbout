//
//  GradientView.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 19/07/22.
//

import UIKit

class GradientView: UIView {
    var primaryColor = UIColor(red: 0.11, green: 0.10, blue: 0.10, alpha: 1.00)
    var secondaryColor = UIColor(red: 0.88, green: 0.00, blue: 0.00, alpha: 1.00)
    
    var startPointX: CGFloat = 0
    var startPointY: CGFloat = 0
    var endPointX: CGFloat = 4
    var endPointY: CGFloat = 4
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
