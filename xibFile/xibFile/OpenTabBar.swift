//
//  FirstTabBar.swift
//  xibFile
//
//  Created by Alexandra on 29.11.2020.
//

import UIKit

class OpenTabBar: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Second Navigation Screen"
        view.backgroundColor = .systemPurple
        
        secondButtonConfig()
        peopleButtonConfig()
       
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))
        
    }
    
    @objc func dismissBut() {
        dismiss(animated: true, completion: nil)
    }
    
    func secondButtonConfig() {
        let secondButton = UIButton()
        secondButton.setTitle("Open Tab Bar", for: .normal)
        secondButton.backgroundColor = .systemTeal
        secondButton.layer.cornerRadius = 20
        view.addSubview(secondButton)
        
        secondButton.addTarget(self, action: #selector(createFavouriteList), for: .touchUpInside)
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            secondButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            secondButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])
    }
    
    @objc func createFavouriteList() {
        let tabBar = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FavouriteList())
        let vc2 = UINavigationController(rootViewController: ListOfTwenty())
        
        vc1.title = "List"
        vc2.title = "Story"
        
        tabBar.setViewControllers([vc1, vc2], animated: false)
        
        guard let items = tabBar.tabBar.items else {
            return
        }
        
        let images = ["star", "house"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBar.modalPresentationStyle = .fullScreen
        present(tabBar, animated: true)
    }
    
    func peopleButtonConfig() {
        let peopleButton = UIButton()
        peopleButton.setTitle("Open List Of People", for: .normal)
        peopleButton.backgroundColor = .systemTeal
        peopleButton.layer.cornerRadius = 20
        view.addSubview(peopleButton)
        
        peopleButton.addTarget(self, action: #selector(createListOfPeople), for: .touchUpInside)
        
        peopleButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            peopleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            peopleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 270),
            peopleButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            peopleButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])
    }
    
    @objc func createListOfPeople() {
        let newVC = ListOfPeople()
        let navigVC = UINavigationController(rootViewController: newVC)
        navigVC.modalPresentationStyle = .fullScreen
        present(navigVC, animated: true)
    }
    
}


