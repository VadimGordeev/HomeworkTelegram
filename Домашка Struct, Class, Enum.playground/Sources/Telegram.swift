//
//  Telegram.swift
//  
//
//  Created by Vadim on 21/10/2025.
//


public struct Telegram {
    private(set) var users: [User] = []
    private(set) var chats: [Chat?] = []
    
    public init() {
        
    }

    public mutating func addUser(_ user: User) {
        users.append(user)
    }

    public mutating func createChat(type: ChatType, participants: [User]) -> Chat {
        let chat = Chat(id: chats.count + 1, type: type, participants: participants)
        chats.append(chat)
        return chat
    }

    public func printAllChats() {
        for case let chat? in chats {
            chat.printChat()
        }
    }
}
