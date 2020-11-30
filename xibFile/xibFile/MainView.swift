//
//  MainView.swift
//  xibFile
//
//  Created by Alexandra on 29.11.2020.
//

import UIKit

class MainView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        self.navigationItem.title = "Navigation Menu"
        
        let firstButton = UIButton()
        firstButton.setTitle("Second Screen", for: .normal)
        firstButton.backgroundColor = .systemTeal
        firstButton.layer.cornerRadius = 20
        view.addSubview(firstButton)
        
        firstButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            firstButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            firstButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])
    }
    
    @objc func didTapButton () {
        let firstVC = OpenTabBar()
        let tabBarNC = UINavigationController(rootViewController: firstVC)
        
        tabBarNC.modalPresentationStyle = .fullScreen
        present(tabBarNC, animated: true)
        
    }
}


