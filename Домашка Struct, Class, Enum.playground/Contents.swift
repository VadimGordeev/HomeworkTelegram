import Foundation

var telegram = Telegram()

let user1 = User(id: 1, firstName: "John", lastName: "Snow", username: "johnsnow")
let user2 = User(id: 2, firstName: "Arya", lastName: "Stark", username: "arya")

telegram.addUser(user1)
telegram.addUser(user2)

let chat = telegram.createChat(type: .privateChat, participants: [user1, user2])

var message1 = Message(id: 1, text: "Hi Arya!", from: user1)
chat.addMessage(message1)

telegram.printAllChats()

var message2 = Message(id: 2, text: "Hi John!", from: user2)
chat.addMessage(message2)
telegram.printAllChats()

var message3 = Message(id: 3, text: "Hifkdslfjlsdf!", from: user1)
chat.addMessage(message3)
telegram.printAllChats()

message3.editText("How are you?")
telegram.printAllChats()
