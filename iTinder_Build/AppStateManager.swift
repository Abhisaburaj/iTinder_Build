//
//  AppStateManager.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/20.
//

import Foundation

class AppStateManager: ObservableObject {
    
    @Published var selectedTab: TabBarButtonType = .fire
    @Published var showPersonProfile: Person? = nil
    @Published var shouldShowPurchaseGoldPopup: Bool = false
    
    public func showPersonProfile(_ person: Person) {
        self.showPersonProfile = person
    }
    
    public func showPurchaseGoldScreen() {
        self.shouldShowPurchaseGoldPopup = true
    }
}
