//
//  ChatView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatManager: ChatManager
    
    @State private var typedMessage: String = ""
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatManager = ChatManager(person: person)
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer().frame(height: 60)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    LazyVStack {
                        ForEach(chatManager.messages.indices, id: \.self) { index in
                            let message = chatManager.messages[index]
                            MessageView(message: message)
                                .animation(.easeIn)
                                .transition(.move(edge: .trailing))
                        }
                    }
                })
                
                ZStack(alignment: .trailing) {
                    Color.textfieldBackground
                    
                    TextField("Type a message", text: $typedMessage)
                        .foregroundColor(Color.textPrimary)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal)
                    
                    Button(action: {
                        sendMessage()
                    }, label: {
                        Text("Send")
                    })
                    .padding(.horizontal)
                    .foregroundColor(typedMessage.isEmpty ? Color.textPrimary : Color.blue)
                }
                .frame(height: 40)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            ChatViewHeader(
                name: person.name,
                imageURL: person.imageURLS.first) {
                // Video Action
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func sendMessage() {
        chatManager.sendMessage(Message(content: typedMessage))
        typedMessage = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
