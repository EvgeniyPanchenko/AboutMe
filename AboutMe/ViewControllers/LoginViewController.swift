//
//  LoginViewController.swift
//  AboutMe
//
//  Created by Евгений Панченко on 29.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
//    private let user = "User"
//    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func logInButton() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "Oops!", message: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        passwordTF.text = ""
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButton()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
