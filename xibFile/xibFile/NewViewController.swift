//
//  NewViewController.swift
//  xibFile
//
//  Created by Alexandra on 18.10.2020.
//

import UIKit

class NewViewController: UIViewController {
    
    var logNameText: String = ""
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .lightGray
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        label.text = "Welcome to my app"
        label.backgroundColor = .white
        label.textAlignment = .center
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let welcomeText = UILabel (frame: CGRect(x: 20, y: 500, width: 200, height: 200))
        welcomeText.text = "This is my first app. This application is currently useless. But Rome wasn't built in one day"
        welcomeText.numberOfLines = .zero
        welcomeText.backgroundColor = .white
        welcomeText.textAlignment = .center
        view.addSubview(welcomeText)
        
        welcomeText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeText.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            welcomeText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            welcomeText.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        
        let firstButton = UIButton(frame: CGRect(x: 50, y: 40, width: 100, height: 50))
        firstButton.setTitle("First button", for: .normal)
        firstButton.backgroundColor = .brown
        view.addSubview(firstButton)
        
        firstButton.translatesAutoresizingMaskIntoConstraints = false

        firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstButton.topAnchor.constraint(equalTo: view.firstBaselineAnchor, constant: 50).isActive = true
        firstButton.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -200).isActive = true
        
        
        
        
        title = logNameText
        label.text = "Welcome to my app \(logNameText)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}



