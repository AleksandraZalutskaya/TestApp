//
//  LogInViewController.swift
//  xibFile
//
//  Created by Alexandra on 15.10.2020.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var enterLogName: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var accountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func registrationXib(_ sender: Any) {
        let vcXib = SignUpViewController(nibName: nil, bundle: nil)
        vcXib.modalPresentationStyle = .fullScreen
        if presentingViewController is SignUpViewController {         //не наслаивает экраны
            dismiss(animated: true, completion: nil)
        } else {present(vcXib, animated: true, completion: nil)}
        
    }
    
    let storyB = UIViewController()
    
    @IBAction func logInButton(_ sender: Any) {
        let vc = NewViewController()
        vc.modalPresentationStyle = .fullScreen
        let text = enterLogName.text
        vc.logNameText = text ?? "error"
        self.present(vc, animated: true, completion: nil)
        
        
        
        
        
    }
}


