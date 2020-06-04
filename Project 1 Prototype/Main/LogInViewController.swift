//
//  LogInViewController.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-04.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var userIdTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let testId = "123"
    let testPassword = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
        configureTapGesture()
    }
    
    private func configureTextFields() {
        userIdTextField.delegate = self
        passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LogInViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped(_ sender: Any) {
        handleTap()
        if userIdTextField.text == testId && passwordTextField.text == testPassword {
            resultLabel.text = ""
        } else {
            resultLabel.text = "Log in info incorrect"
        }
    }
}

extension LogInViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
