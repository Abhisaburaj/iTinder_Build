//
//  Person.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import SwiftUI

struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var imageURLS: [URL]
    var biography: String
    var age: Int
    
    // Used for card manipulation
    var xPosition: CGFloat = 0.0
    var yPosition: CGFloat = 0.0
    var degree: Double = 0.0
}

extension Person {
    static let example = Person(
        name: "Aaron",
        imageURLS: [
            URL(string: "https://picsum.photos/400/300")!,
            URL(string: "https://picsum.photos/400/301")!,
            URL(string: "https://picsum.photos/400/302")!,
            URL(string: "https://picsum.photos/400/303")!
        ],
        biography: "This is my bio. I just want to say that I am a very boring person and that if you liked me, you made a huge mistake.",
        age: 31
    )
    
    static let example2 = Person(
        name: "David",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        biography: "I really love pizza.",
        age: 35
    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "Sanghwa", imageURLS: [URL(string: "https://picsum.photos/400/302")!], biography: "Goobne chicken is the best.", age: 32),
        Person(name: "Danny", imageURLS: [URL(string: "https://picsum.photos/400/303")!], biography: "You fall down something.", age: 28),
        Person(name: "Perry", imageURLS: [URL(string: "https://picsum.photos/400/304")!], biography: "n00bs are the reason I ragequit.", age: 33)
//        Person(name: "Michael", imageURLS: [URL(string: "https://picsum.photos/400/305")!], biography: "Warhammer is better than going on dates.", age: 33)
    ]
}
