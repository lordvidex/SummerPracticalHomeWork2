//
//  ViewController.swift
//  Assignment2
//
//  Created by Evans Owamoyo on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {
    private let correctUserName = "Admin"
    private let correctPassword = "Admin"
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
    }

    @IBAction func onLogIn(_ sender: Any) {
        if usernameTextField.text == correctUserName && passwordTextField.text == correctPassword {
            let contactsViewController = storyboard?.instantiateViewController(identifier: "ContactsViewController") as! ContactsViewController
            navigationController?.pushViewController(contactsViewController, animated: true)
        } else {
            let alert = UIAlertController(title: "Error", message: "The username or password you entered is incorrect", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

// MARK : UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == usernameTextField {
            passwordTextField.becomeFirstResponder()
        }else if textField == passwordTextField {
            onLogIn("Keyboard")
        }
        return true
    }
}

