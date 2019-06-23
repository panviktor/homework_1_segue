//
//  ViewController.swift
//  homework_1_segue
//
//  Created by Виктор on 23/06/2019.
//  Copyright © 2019 SwiftViktor. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var newLoginButton: UIButton!
    @IBOutlet var newPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGUI()
    }

    @IBAction func loginPressed(_ sender: UIButton) {
    }
    
    @IBAction func newLoginPressed(_ sender: UIButton) {
    }
    
    @IBAction func newPasswordPressed(_ sender: UIButton) {
    }
    
    
}



extension MainVC {
    private func setupGUI() {
        loginButton.layer.cornerRadius = 10
        newLoginButton.layer.cornerRadius = 10
        newPasswordButton.layer.cornerRadius = 10
    }
}
