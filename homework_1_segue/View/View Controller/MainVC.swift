//
//  ViewController.swift
//  homework_1_segue
//
//  Created by Виктор on 23/06/2019.
//  Copyright © 2019 SwiftViktor. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    private var model = PasswordModel(userName: "user", userPassword: "pass")
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var newLoginButton: UIButton!
    @IBOutlet var newPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC: SecondVC = segue.destination as! SecondVC
        switch segue.identifier {
        case "LoginSegue":
            secondVC.buttonTag = 1
        case "generateLoginSegue":
            secondVC.buttonTag = 2
            secondVC.model = model
        case "generatePassSegue":
            secondVC.buttonTag = 3
            secondVC.model = model
        default:
            return
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let login = loginTF.text else { return }
        guard let pass = passwordTF.text  else { return }
        if model.login(login, password: pass) {
            performSegue(withIdentifier: "LoginSegue", sender: nil)
        } else {
            showAllert()
        }
    }
    
    @IBAction func newLoginPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "generateLoginSegue", sender: nil)
    }
    
    @IBAction func newPasswordPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "generatePassSegue", sender: nil)
    }
    
}

extension MainVC {
    private func setupGUI() {
        loginButton.layer.cornerRadius = 10
        newLoginButton.layer.cornerRadius = 10
        newPasswordButton.layer.cornerRadius = 10
    }
    
    private func showAllert() {
        let alert = UIAlertController(title: "Wrong Login or Password", message: "Repeat Please", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}
