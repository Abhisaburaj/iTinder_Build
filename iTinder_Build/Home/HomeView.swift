//
//  HomeView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var userManager: UserManager
    @EnvironmentObject var appStateManager: AppStateManager
    
    var body: some View {
        VStack {
            CardStack(people: userManager.cardPeople)
            
            Spacer()
            
            HStack {
                CircleButtonView(buttonType: .back) {
                    appStateManager.showPurchaseGoldScreen()
                }
                
                Spacer()
                
                CircleButtonView(buttonType: .reject) {
                    if let person = userManager.cardPeople.last {
                        userManager.swipe(person, .reject)
                    }
                }
                
                Spacer()
                
                CircleButtonView(buttonType: .star) {
                    if let person = userManager.cardPeople.last {
                        if userManager.currentUser.isGoldSubscriber {
                            userManager.superLike(person)
                        } else {
                            appStateManager.showPurchaseGoldScreen()
                        }
                    }
                }
                
                Spacer()
                
                CircleButtonView(buttonType: .heart) {
                    if let person = userManager.cardPeople.last {
                        userManager.swipe(person, .like)
                    }
                }
                
                Spacer()
                
                CircleButtonView(buttonType: .lightning) {
                    appStateManager.showPurchaseGoldScreen()
                }
            }
            .frame(height: 50)
            .padding(.horizontal)
            .padding(.vertical, 25)
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}
