//
//  MainView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack {
                HStack {
                    TabBarButtonView(type: .fire) {
                        //
                    }
                    
                    TabBarButtonView(type: .star) {
                        //
                    }
                    
                    TabBarButtonView(type: .message) {
                        //
                    }
                    
                    TabBarButtonView(type: .profile) {
                        //
                    }
                }
                .frame(height: 100)
                
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

