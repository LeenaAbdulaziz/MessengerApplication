//
//  LoginViewController.swift
//  MessengerApplication
//
//  Created by Linah abdulaziz on 26/05/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var emailfieald: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var SigninGoogleButton: UIButton!
    var buttons = [UIButton]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        PasswordField.isSecureTextEntry = true
        buttons = [ signupButton, SigninGoogleButton]
        createBoarders()
        // Do any additional setup after loading the view.
    }
    
    func createBoarders(){
        for button in buttons{
        
            button.backgroundColor = .clear
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
        
        
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func facebooksigninPressed(_ sender: UIButton) {
    }
    

    
    @IBAction func GooglesigninPressed(_ sender: UIButton) {
    }
    
}
