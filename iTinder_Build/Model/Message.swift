//
//  Message.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

struct Message: Hashable {
    
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent = Message(content: "Hello there.")
    static let exampleReceived = Message(content: "Hi, nice to meet you.", person: Person.example)
}
