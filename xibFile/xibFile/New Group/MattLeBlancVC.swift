//
//  MattLeBlancViewController.swift
//  xibFile
//
//  Created by Alexandra on 09.12.2020.
//

import UIKit

class MattLeBlancVC: UIViewController {

    var imageMain = UIImageView()
    var nameMain = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Profile Information"
        configImgMain()
        configNameMain()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))
    }

    func setProfile(data: ImageStruct) {
        imageMain.image = data.image
        nameMain.text = data.title
    }

    @objc func dismissBut() {
        dismiss(animated: true, completion: nil)
    }

    func configImgMain() {
        imageMain.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageMain.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageMain.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    func configNameMain() {
        nameMain.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameMain.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameMain.topAnchor.constraint(equalTo: imageMain.bottomAnchor, constant: 10)
        ])
    }
}
