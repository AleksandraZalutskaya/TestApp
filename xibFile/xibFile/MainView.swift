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
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.tintColor = .blue
        
        let firstButton = UIButton()
        firstButton.setTitle("Table Views", for: .normal)
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
        
        let secondButton = UIButton()
        secondButton.setTitle("Collection Views", for: .normal)
        secondButton.backgroundColor = .systemTeal
        secondButton.layer.cornerRadius = 20
        view.addSubview(secondButton)
        
        secondButton.addTarget(self, action: #selector(didTapCollection), for: .touchUpInside)
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
            secondButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            secondButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])
        

    }
    
    @objc func didTapButton () {
        let firstVC = OpenTabBar()
        let tabBarNC = UINavigationController(rootViewController: firstVC)
        
        tabBarNC.modalPresentationStyle = .fullScreen
        present(tabBarNC, animated: true)
        
    }
    
    @objc func didTapCollection() {
        let firstVC = CollectionView()
        let goToNC = UINavigationController(rootViewController: firstVC)
        
        goToNC.modalPresentationStyle = .fullScreen
        present(goToNC, animated: true)
    }
}


