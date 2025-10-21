//
//  Message.swift
//  
//
//  Created by Vadim on 21/10/2025.
//


public class Message {
    let id: Int
    var text: String
    let from: User
    
    public init(id: Int, text: String, from: User) {
        self.id = id
        self.text = text
        self.from = from
    }
    
    public func editText(_ newText: String) {
        self.text = newText + " (edited)"
    }
}
