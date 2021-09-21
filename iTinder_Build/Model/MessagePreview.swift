//
//  MessagePreview.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather where you live right now?")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather where you live right now?"),
        MessagePreview(person: Person.example2, lastMessage: "What's up? Do you live VCU?")
    ]
}
