//
//  LoginViewController.swift
//  MessengerApplication
//
//  Created by Linah abdulaziz on 26/05/1443 AH.
//

import UIKit
import Firebase

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
        
        // Firebase Login
        FirebaseAuth.Auth.auth().signIn(withEmail: (emailfieald.text!), password: (PasswordField.text!), completion: { [weak self] authResult, error in
            guard let strongSelf = self else {
                    return
                }
                if let result = authResult  {
                    
                    let user = result.user
                    print("logged in user: \(user)")
                    // if this succeeds, dismiss
                    
                    let vc = self?.storyboard?.instantiateViewController(withIdentifier: "ConversationViewController") as! ConversationViewController
                    strongSelf.navigationController?.pushViewController(vc , animated: true)
                    
                }else if  let err = error{
                    print (err.localizedDescription)
                }
                

            
        })
    }
    
    
    @IBAction func facebooksigninPressed(_ sender: UIButton) {
    }
    

    
    @IBAction func GooglesigninPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func signupPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc , animated: true)
    }
    
}
