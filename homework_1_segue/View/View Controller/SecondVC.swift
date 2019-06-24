//
//  SecondVC.swift
//  homework_1_segue
//
//  Created by Виктор on 24/06/2019.
//  Copyright © 2019 SwiftViktor. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var buttonTag: Int!
    var model: PasswordModel!

    @IBOutlet var label: UILabel!
    @IBOutlet var mainTF: UITextField!
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGUI()
    }
    
    @IBAction func saveButtonPressed() {
        guard let text = mainTF.text else { return }
        
        switch buttonTag {
        case 2:
            model.editUserName(newName: text)
        case 3:
            model.editUserPassword(newPassword: text)
        default:
            print("ERROR")
        }
    }
    
    deinit {
        print("Goodbay SecondVC")
    }
}

extension SecondVC {
    private func setupGUI() {
        switch buttonTag {
        case 1:
            label.text = "Congratulations, you remember your username and password"
            view.backgroundColor = .green
            mainTF.isHidden = true
            saveButton.isHidden = true
        case 2:
            label.text = "Enter New Login"
            view.backgroundColor = .gray
            mainTF.placeholder = "Login"
        case 3:
            label.text = "Enter New Password"
            view.backgroundColor = .gray
            mainTF.placeholder = "Password"
        default:
            label.text = "ERROR"
        }
    }
}
