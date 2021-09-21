//
//  ContentView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager: AppStateManager = AppStateManager()
    
    var body: some View {
        MainView()
            .environmentObject(manager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
