//
//  ExtensionButton.swift
//  xibFile
//
//  Created by Alexandra on 13.12.2020.
//

import UIKit

extension UIButton {

    func createButton(superView: UIView, title: String, topAncore: Int) {
        let customButton = UIButton()
        customButton.setTitle(title, for: .normal)
        customButton.backgroundColor = .systemTeal
        customButton.layer.cornerRadius = 20

        superview?.addSubview(customButton)

        customButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            customButton.centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            customButton.topAnchor.constraint(equalTo: superView.topAnchor, constant: CGFloat(topAncore)),
            customButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            customButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])
    }
}
