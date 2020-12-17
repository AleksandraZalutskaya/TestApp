//
//  ManyViewsVC.swift
//  xibFile
//
//  Created by Alexandra on 13.12.2020.
//

import UIKit

class GestureVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = .white

        let mainView = addView(on: view, topOffset: 0, bottomOffset: 0, leadingAncore: 0, trailingAncore: 0)
        mainView.backgroundColor = .black

        let swipeColor = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(_:)))
        swipeColor.direction = .left
        swipeColor.numberOfTouchesRequired = 1

        let secondView = addView(on: view, topOffset: 300, bottomOffset: -300, leadingAncore: 100, trailingAncore: -100)
        secondView.backgroundColor = .systemPink
        secondView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panGesture)))
        secondView.addGestureRecognizer(swipeColor)
        secondView.isUserInteractionEnabled = true

    }

    @objc func onSwipe(_ gesture: UITapGestureRecognizer) {
        if let fillView = gesture.view {
            view.backgroundColor = .darkGray
        }

    }

    @objc func panGesture(gesture: UIPanGestureRecognizer) {
        let panV = gesture.view!
        let translation = gesture.translation(in: view)

        switch gesture.state {
        case .began, .changed:
            panV.center = CGPoint(x: panV.center.x + translation.x, y: panV.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: view)
        case .ended:
            break
        default:
            break
        }
    }

    func addView(on superview: UIView, topOffset: CGFloat, bottomOffset: CGFloat, leadingAncore: CGFloat, trailingAncore: CGFloat) -> UIView {
        let view = UIView()
        superview.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: leadingAncore),
            view.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: trailingAncore),
            view.topAnchor.constraint(equalTo: superview.topAnchor, constant: topOffset),
            view.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottomOffset)
        ])
        return view
    }

}
