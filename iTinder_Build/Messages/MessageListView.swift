//
//  MessageListView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/21.
//

import SwiftUI

struct MessageListView: View {
    @ObservedObject var messageListVM: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    @State private var isEditing: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    TextField("Search Matches", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color.textfieldBackground)
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.textPrimary)
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.leading, 4)
                                
                                Spacer()
                            }
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture(perform: {
                            self.isEditing = true
                        })
                        .animation(.easeIn(duration: 0.25))
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.searchText = ""
                            self.endEditing(true)
                        }, label: {
                            Text("Cancel")
                        })
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        .animation(.easeIn(duration: 0.25))
                    }
                }
                
                Spacer().frame(height: 14)
                
                ZStack {
                    VStack {
                        ForEach(messageListVM.messagePreviews.filter({ searchText.isEmpty ? true : displayPreview($0) }), id: \.self) { preview in
                            // Label is clickable, goes to destination
                            NavigationLink(
                                destination: ChatView(person: preview.person),
                                label: {
                                    MessageRowView(preview: preview)
                                })
                                .buttonStyle(PlainButtonStyle())
                                .animation(.easeIn(duration: 0.25))
                                .transition(.slide)
                        }
                    }
                    if isEditing && searchText.isEmpty {
                        Color.white.opacity(0.5)
                    }
                }
                
                Spacer()
            }
        }
        .modifier(HideNavigationView())
    }
    
    func displayPreview(_ preview: MessagePreview) -> Bool {
        // Person name
        if preview.person.name.contains(searchText) { return true }

        // Last message sent
        if preview.lastMessage.contains(searchText) { return true }
        
        // Person bio
        if preview.person.biography.contains(searchText) { return true }
        
        return false
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MessageListView()
        }
    }
}
