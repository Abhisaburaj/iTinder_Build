//
//  UserManager.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    @Published var matches: [Person] = []
    
    init() {
        loadUser()
    }
    
    // Network call to load real user
    private func loadUser() {
        self.currentUser = User.example
        loadMatches()
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
}
