//
//  MainView.swift
//  xibFile
//
//  Created by Alexandra on 29.11.2020.
//

import UIKit
import Lottie

class MainView: UIViewController {
    
    
    
    lazy var backgroundVC: AnimationView = {
        let animationVC = AnimationView()
        view.addSubview(animationVC)
        animationVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationVC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationVC.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            animationVC.widthAnchor.constraint(equalToConstant: 100),
            animationVC.heightAnchor.constraint(equalToConstant: 100)
        ])
        return animationVC
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPurple
        self.navigationItem.title = "Navigation Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.tintColor = .blue
        
        
        playAnimation()
        
        
//        let firstButton: () = createButton(title: "Table Views", topAncore: 200)
//        firstButton.
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
            secondButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            secondButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            secondButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
        ])

        let thirdButton = UIButton()
        thirdButton.setTitle("Many Views", for: .normal)
        thirdButton.backgroundColor = .systemTeal
        thirdButton.layer.cornerRadius = 20
        view.addSubview(thirdButton)

        thirdButton.addTarget(self, action: #selector(didTapViews), for: .touchUpInside)

        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 320),
            thirdButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
            thirdButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
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

    @objc func didTapViews() {
        let firstVC = GestureVC()
        let goToNC = UINavigationController(rootViewController: firstVC)

        goToNC.modalPresentationStyle = .fullScreen
        present(goToNC, animated: true)
    }
    
    
    
    func playAnimation() {
//        let animation = Animation.named("38587-great-job")
        
        let animation = Animation.named("38634-icons-heart-2")
        backgroundVC.animation = animation
        backgroundVC.play(fromProgress: 0, toProgress: 1, loopMode: .loop) { (finished) in
            if finished {
                print("ended")
            } else {
                print("cancelled")
            }
        }
    }

//    func createButton(title: String, topAncore: Int) {
//        let customButton = UIButton()
//        customButton.setTitle(title, for: .normal)
//        customButton.backgroundColor = .systemTeal
//        customButton.layer.cornerRadius = 20
//
//        view.addSubview(customButton)
//
//        customButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            customButton.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topAncore)),
//            customButton.heightAnchor.constraint(equalToConstant: CGFloat(50)),
//            customButton.widthAnchor.constraint(greaterThanOrEqualToConstant: CGFloat(200))
//        ])
//    }
}
