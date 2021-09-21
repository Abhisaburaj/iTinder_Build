//
//  MessageListVM.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        // Handle networking to load messagePreviews from a server
        self.messagePreviews = [MessagePreview.example]
    }
}
