//
//  User.swift
//  
//
//  Created by Vadim on 21/10/2025.
//


public struct User {
    let id: Int
    let firstName: String
    let lastName: String?
    let username: String
    
    public init(id: Int, firstName: String, lastName: String?, username: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
    }
}
