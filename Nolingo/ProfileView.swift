//
//  ProfileView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 15/11/23.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {
        NavigationStack {
        ZStack {
       Color(red: 0.08, green: 0.12, blue: 0.15)
                .ignoresSafeArea()
            Image("duo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: -180)
                Text("Your name")
                    .offset(x: -100, y: 20)
                    .bold()
                    .foregroundColor(.white)
            Text("Joined in:")
                .foregroundStyle(Color.white)
                .offset(x:100, y: 20)
                
                Button("Redeem Chest") {
                    
                    //action
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(8)
                .padding(20)
                .offset(y:150)
                
            }   
            
         
        }
        
        
        
    } 
    
}

#Preview {
    ProfileView()
}
