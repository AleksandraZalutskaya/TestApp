//
//  ArrayToUSe.swift
//  xibFile
//
//  Created by Alexandra on 30.11.2020.
//

import UIKit

class ArrayToUSe: UITableViewCell {
    var textTitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(textTitle)
        configArray()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configArray() {
        textTitle.numberOfLines = 0
        textTitle.adjustsFontSizeToFitWidth = true
    }
    
}
