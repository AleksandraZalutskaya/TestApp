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
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
//        var firstText = "Welcome"
//        let labelText = NSAttributedString(string: firstText)
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
        
//        welcomeText.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            welcomeText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
//            welcomeText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//            welcomeText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
//            welcomeText.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
        view.addSubview(welcomeText)
        
        let firstButton = UIButton(frame: CGRect(x: 50, y: 40, width: 100, height: 50))
        firstButton.setTitle("This is first button", for: .normal)
        firstButton.backgroundColor = .brown
        
//        firstButton.translatesAutoresizingMaskIntoConstraints = false
//
//        firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
//        firstButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50).isActive = true
//        firstButton.topAnchor.constraint(equalTo: view.firstBaselineAnchor, constant: 20).isActive = true
        
        view.addSubview(firstButton)
        
        
        title = logNameText
        label.text = "Welcome to my app \(logNameText)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
