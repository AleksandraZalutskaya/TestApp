//
//  ImageViewCell.swift
//  xibFile
//
//  Created by Alexandra on 06.12.2020.
//

import UIKit

class ImageViewCell: UITableViewCell {
    var imageViewCell = UIImageView()
    var titleViewCell = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(imageViewCell)
        addSubview(titleViewCell)
        
        configImage()
        configTitle()
        setImageConstraints()
        setTitleConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configImage() {
        imageViewCell.layer.cornerRadius = 10
        imageViewCell.clipsToBounds = true
        
    }
    
    func configTitle() {
        titleViewCell.numberOfLines = 0
        titleViewCell.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        imageViewCell.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewCell.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageViewCell.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            imageViewCell.heightAnchor.constraint(equalToConstant: 60),
            imageViewCell.widthAnchor.constraint(equalTo: imageViewCell.heightAnchor, multiplier: 16/9)
        ])
    }
    
    func setTitleConstraints() {
        titleViewCell.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleViewCell.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleViewCell.topAnchor.constraint(equalTo: imageViewCell.bottomAnchor, constant: 10),
            titleViewCell.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
