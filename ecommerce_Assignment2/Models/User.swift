//
//  User.swift
//  ecommerce_Assignment2
//
//  Created by May Derbas on 2020-07-16.
//  Copyright © 2020 May Derbas. All rights reserved.
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

