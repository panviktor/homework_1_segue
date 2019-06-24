//
//  PasswordModel.swift
//  homework_1_segue
//
//  Created by Виктор on 24/06/2019.
//  Copyright © 2019 SwiftViktor. All rights reserved.
//

import Foundation

class PasswordModel {
    private var userName: String
    private var userPassword: String
    
    func login(_ login: String, password: String) -> Bool {
        return login == userName && password == userPassword
    }
    
    func editUserName(newName: String) {
        userName = newName
    }
    
    func editUserPassword(newPassword: String) {
        userPassword = newPassword
    }
    
    init(userName: String, userPassword: String) {
        self.userName = userName
        self.userPassword = userPassword
    }
}


