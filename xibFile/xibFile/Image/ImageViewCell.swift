//
//  ImageViewCell.swift
//  xibFile
//
//  Created by Alexandra on 06.12.2020.
//

import UIKit

class ImageViewCell: UITableViewCell {
    

    var img = UIImageView()
    var lable = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(img)
        self.contentView.addSubview(lable)
        configImage()
        configLable()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(data: ImageStruct) {
        img.image = data.image
        lable.text = data.title
    }
    
    func configImage() {
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            img.centerXAnchor.constraint(equalTo: centerXAnchor),
            img.heightAnchor.constraint(lessThanOrEqualToConstant: 50),
            img.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }

    func configLable() {
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.numberOfLines = 0
        lable.adjustsFontSizeToFitWidth = true
        NSLayoutConstraint.activate([
            lable.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 5),
            lable.centerXAnchor.constraint(equalTo: centerXAnchor),
            lable.heightAnchor.constraint(lessThanOrEqualToConstant: 35)
        ])
    }
}
