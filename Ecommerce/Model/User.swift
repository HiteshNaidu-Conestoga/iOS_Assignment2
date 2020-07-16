//
//  User.swift
//  Ecommerce
//
//  Created by Nabil Allataifeh on 2020-07-16.
//  Copyright © 2020 Nabil Allataifeh. All rights reserved.
//

import Foundation
class User
{
    var email: String
    var password: String
    
    
    init(email: String, password: String)
    {
        self.email = email
        self.password = password
        
    }
    
     class func users() -> [User] {
    var users = [User]()
        users.append(User(email:"may@gmail.com",password: "may"))
        users.append(User(email:"aishwarya@gmail.com",password: "aishwarya"))
        users.append(User(email:"hitesh@gmail.com",password: "hitesh"))
        users.append(User(email:"shreyash@gmail.com",password: "shreyash"))
        return users
    }
    
}

