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
    var age: Int
    var imageURLS: [URL]
    var biography: String
    var longBiography: String
    var distance: Int
    
    
    
    // Used for card manipulation
    var xPosition: CGFloat = 0.0
    var yPosition: CGFloat = 0.0
    var degree: Double = 0.0
}

extension Person {
    static let example = Person(
        name: "Aaron",
        age: 31,
        imageURLS: [
            URL(string: "https://picsum.photos/400/300")!,
            URL(string: "https://picsum.photos/400/301")!,
            URL(string: "https://picsum.photos/400/302")!,
            URL(string: "https://picsum.photos/400/303")!
        ],
        biography: "This is my bio. I just want to say that I am a very boring person and that if you liked me, you made a huge mistake.",
        longBiography: "This is my bio. I just want to say that I am a very boring person and that if you liked me, you made a huge mistake.",
        distance: 20
    )
    
    static let example2 = Person(
        name: "David",
        age: 35,
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        biography: "I really love pizza.",
        longBiography: "I really love pizza.",
        distance: 25
    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(
            name: "Sanghwa",
            age: 32,
            imageURLS: [
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
                URL(string: "https://picsum.photos/400/304")!,
                URL(string: "https://picsum.photos/400/305")!
            ],
            biography: "Goobne chicken is the best.",
            longBiography: "Goobne chicken is the best.",
            distance: 30
        ),
        Person(
            name: "Danny",
            age: 28,
            imageURLS: [
                URL(string: "https://picsum.photos/400/306")!,
                URL(string: "https://picsum.photos/400/307")!,
                URL(string: "https://picsum.photos/400/308")!,
                URL(string: "https://picsum.photos/400/309")!
            ],
            biography: "You fall down something.",
            longBiography: "You fall down something.",
            distance: 35
        ),
        Person(
            name: "Perry",
            age: 33,
            imageURLS: [
                URL(string: "https://picsum.photos/400/310")!,
                URL(string: "https://picsum.photos/400/311")!,
                URL(string: "https://picsum.photos/400/312")!,
                URL(string: "https://picsum.photos/400/313")!
            ],
            biography: "n00bs are the reason I ragequit.",
            longBiography: "n00bs are the reason I ragequit.",
            distance: 40
        )
//        Person(name: "Michael", imageURLS: [URL(string: "https://picsum.photos/400/305")!], biography: "Warhammer is better than going on dates.", age: 33)
    ]
}
