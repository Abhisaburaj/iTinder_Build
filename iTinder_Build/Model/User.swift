//
//  User.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var occupation: String
    var imageURLS: [URL] = []
    var isGoldSubscriber: Bool = false
    var profileTip: String = ""
}

extension User {
    static let example = User(
        name: "Stanley",
        age: 33,
        occupation: "Software Developer",
        imageURLS: [URL(string: "https://picsum.photos/310")!],
        isGoldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes."
    )
}
