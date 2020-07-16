//
//  LoginViewController.swift
//  Ecommerce
//
//  Created by Nabil Allataifeh on 2020-07-14.
//  Copyright © 2020 Nabil Allataifeh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    var users : [User] = User.users()
    
    @IBAction func loginButton(_ sender: UIButton) {
        var invalid = true
        var index = 0
        // check for empty fields
        if emailTextField.text == "" || passwordTextField.text == ""{
            errorLabel.text = "Email and Password are required"
        }else{
            // repeat until valid credential found or index equals users.count
            repeat{
                if (emailTextField.text == users[index].email && passwordTextField.text == users[index].password){
                    invalid = false
                }else {
                    index = index + 1
                }
            
            }while (invalid && index < users.count)
            if invalid == true {
                errorLabel.text = "Incorrect Email or Password"
            }else {
            // when valid credentials are met, go to navigation controller, and empty all fields
                errorLabel.text = ""
                emailTextField.text = ""
                passwordTextField.text = ""
                
               // go to navigation controller
                self.performSegue(withIdentifier: "goToNavigation", sender: self)
            }
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TapGestureRecignizer for dismissing the keyboard
            let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
        
        errorLabel.text=""
        
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
