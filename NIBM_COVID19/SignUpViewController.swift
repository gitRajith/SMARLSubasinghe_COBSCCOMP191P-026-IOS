//
//  SignUpViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-03 on 9/16/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Role: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBAction func SignUp(_ sender: UIButton) {
        
        if let email = Email.text, let password = Password.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
             
                if let e = error {
                    print(e)
                }
                else{
//                    self.performSegue(withIdentifier: "SignupSegway", sender: self)
                    print("Success")
                }// ...
            }
        }
    }
    /*
     @IBOutlet weak var Email: UITextField!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
