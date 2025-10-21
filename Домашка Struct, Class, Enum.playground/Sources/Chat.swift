//
//  Chat.swift
//  
//
//  Created by Vadim on 21/10/2025.
//


public class Chat {
    let id: Int
    let type: ChatType
    let participants: [User]
    private(set) var messages: [Message?] = []

    public init(id: Int, type: ChatType, participants: [User]) {
        self.id = id
        self.type = type
        self.participants = participants
    }

    public func addMessage(_ message: Message) {
        messages.append(message)
    }

    public func printChat() {
        print("Chat \(id), type: \(type)")
        for case let message? in messages {
            print("\(message.from.username): \(message.text)")
        }
    }
}
