//
//  RegisterViewController.swift
//  MessengerApplication
//
//  Created by Linah abdulaziz on 26/05/1443 AH.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PasswordField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }
 
    
    @IBAction func SignuoPresed(_ sender: UIButton) {
    }
    
}
