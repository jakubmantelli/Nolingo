//
//  AddFriendsView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 23/11/23.
//

import SwiftUI

struct AddFriendsView: View {
    
    @State private var username: String = ""
    @State private var showingSuccessAlert: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color(red: 0.08, green: 0.12, blue: 0.15)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Search for friends")
                        .opacity(0.2)
                        .offset(y: -180)
                        .bold()
                    HStack {
                        
                        TextField("Name or username...", text: $username)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                          
                        
                        Button("Submit") {
                            // Perform validation or any other logic here
                            
                            // Assuming success, show the success alert
                            showingSuccessAlert = true
                        }
                    }
                    .offset(x: -20, y: -200)
                    .padding()
                }
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Dismiss")
                        .foregroundColor(Color(red: 0.11, green: 0.69, blue: 0.96))
                        .padding()
                        .bold()
                }
                .offset(y: -100)
                .padding()
            
                .alert(isPresented: $showingSuccessAlert) {
                    Alert(
                        title: Text("Success"),
                        message: Text("Friend request sent to \(username)"),
                        dismissButton: .default(Text("OK"))
                    )
                }
                .padding()
            }
            
         
            
            
            
        }
        
        .ignoresSafeArea(.keyboard)
    }
    
}

#Preview {
    AddFriendsView()
}
