//
//  ViewController.swift
//  xibFile
//
//  Created by Alexandra on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var logIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonXib(_ sender: Any) {
        let vc = SignUpViewController (nibName: nil, bundle: nil)
        present(vc, animated: true, completion: nil)
    }
    @IBAction func logInXib(_ sender: Any) {
        let vcLog = LogInViewController (nibName: nil, bundle: nil)
        present(vcLog, animated: true, completion: nil)
    }
}

