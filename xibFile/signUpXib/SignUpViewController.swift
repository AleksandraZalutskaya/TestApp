//
//  SignUpViewController.swift
//  xibFile
//
//  Created by Alexandra on 15.10.2020.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var haveAccountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func logInXib(_ sender: Any) {
        let vcXib = LogInViewController (nibName: nil, bundle: nil)
        vcXib.modalPresentationStyle = .fullScreen
        if presentingViewController is LogInViewController {
            dismiss(animated: true, completion: nil)
        } else {present(vcXib, animated: true, completion: nil)}
//        present(vcXib, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
