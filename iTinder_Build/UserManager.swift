//
//  UserManager.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", age: 0, occupation: "")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    @Published var cardPeople: [Person] = []
    
    init() {
        loadUser()
    }
    
    private func loadCardPeople() {
        self.cardPeople = Person.examples
    }
    
    // Network call to load real user
    private func loadUser() {
        self.currentUser = User.example
        loadMatches()
        loadTopPicks()
        loadCardPeople()
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
    
    private func loadTopPicks() {
        self.topPicks = Person.examples.shuffled()
    }
    
    public func swipe(_ person: Person, _ direction: SwipeDirection) {
        cardPeople.removeLast()
        // Networking to backend
    }
    
    public func superLike(_ person: Person) {
        cardPeople.removeLast()
        // Networking to backend
    }
}

enum SwipeDirection {
    case like
    case reject
}
