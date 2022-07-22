//
//  CustomCellView.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 21/07/22.
//

import UIKit

class CustomCellView: UITableViewCell {
    static let identifier = "CustomCellView"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addGradient()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    func addGradient() {
        let view = UIView()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(red: 0.11, green: 0.10, blue: 0.10, alpha: 1.00).cgColor,
            UIColor(red: 0.88, green: 0.00, blue: 0.00, alpha: 1.00).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 4, y: 4)
        gradientLayer.frame = view.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
