//
//  ExtentionConstr.swift
//  xibFile
//
//  Created by Alexandra on 30.11.2020.
//

import UIKit

extension UIView {
    func allScreenConstr(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor)
        ])
        
    }
}
