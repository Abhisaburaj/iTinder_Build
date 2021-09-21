//
//  Person.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

struct Person: Hashable {
    var name: String
    var imageURLS: [URL]
}

extension Person {
    static let example = Person(name: "Aaron", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
    static let example2 = Person(name: "David", imageURLS: [URL(string: "https://picsum.photos/400/301")!])
}
