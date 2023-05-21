//
//  createAccountViewController.swift
//  Gym-Work-out
//
//  Created by Maleesha Wijeratne on 18/05/2023.
//

import UIKit
import Firebase

class createAccountViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtnclick(_ sender: UIButton) {
        
        
        guard let email = emailTextField.text else{return}
        guard let password = passwordTextField.text else{return}
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error{
                let alert = UIAlertController(title: "Somthing went wrong", message: "Please check the Email and password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
            else{
                self.performSegue(withIdentifier: "goToNext", sender: self)
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
