//
//  SignUpViewController.swift
//  xibFile
//
//  Created by Alexandra on 15.10.2020.
//

import UIKit

protocol ButtonConf {
    func didTap (text: String, colorBack: UIColor)
}

class SignUpViewController: UIViewController {
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var haveAccountButton: UIButton!
    @IBOutlet weak var repearPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let signUpBut = UIButton()
        signUpBut.setTitle("Sign Up", for: .normal)
        signUpBut.backgroundColor = .gray
        view.addSubview(signUpBut)
        
        signUpBut.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpBut.topAnchor.constraint(equalTo: repearPass.bottomAnchor, constant: 50),
            signUpBut.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 70),
            signUpBut.heightAnchor.constraint(equalToConstant: CGFloat(20))
        ])
        
        var delegText: ButtonConf?
        delegText?.didTap(text: "You tapped", colorBack: .cyan)
        
        
        
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = "Nice to meet you!"
        label.textAlignment = .center
        label.numberOfLines = .zero
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: signUpBut.bottomAnchor, constant: 50),
            label.widthAnchor.constraint(equalToConstant: CGFloat(150))
        ])
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



class FirstCustomButton: UIButton, ButtonConf {
    
    private var active: () -> Void
    
    init (active: @escaping () -> Void ) {
        self.active = active
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didTap(text: String, colorBack: UIColor) {
        perform(#selector(activeFunc), with: nil)
    }
    
    @objc func activeFunc() {
        active()
    }
    
    
    
}
