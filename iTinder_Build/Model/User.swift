//
//  User.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

struct User {
    var name: String
    
    var isGoldSubscriber: Bool = false
}

extension User {
    static let example = User(name: "Stanley", isGoldSubscriber: false)
}
