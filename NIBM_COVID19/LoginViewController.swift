//
//  LoginViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-03 on 9/16/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func SignInBtn(_ sender: UIButton) {
        if let email = email.text, let password = password.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {
               
                authResult, error in
                
            
                if let e = error {
                    print(e)
                    
                    
                    
                    // create the alert
                    let alert = UIAlertController(title: "Warning", message: "Please Check Credentials !!!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    
                    
                    
                
            }
                else {
                    self.performSegue(withIdentifier: "newloginSg", sender: self)
                    
                    
                    // create the alert
                    let alert = UIAlertController(title: "Login Sucess", message: "Please fill out this survey", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    
                    print("login success")
                    
                            }
            }
        }
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
