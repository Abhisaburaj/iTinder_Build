//
//  ChatView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatManager: ChatManager
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatManager = ChatManager(person: person)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
            LazyVStack {
                ForEach(chatManager.messages.indices, id: \.self) { index in
                    let message = chatManager.messages[index]
                    MessageView(message: message)
                }
            }
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
