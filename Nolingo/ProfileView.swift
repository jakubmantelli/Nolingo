//
//  ProfileView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 15/11/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var isActive: Bool = false
    @State private var showAllAchievements: Bool = false
    var body: some View {
        NavigationStack {
            
          ScrollView {
              
                LazyVStack {
                    
                    Spacer(minLength: 200)
                    ZStack {
                     
                        Color(red: 0.08, green: 0.12, blue: 0.15)
                            .ignoresSafeArea()
                        
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: -300)
                        VStack(alignment: .leading) {
                            
                            Text("Jakub")
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            Text("jaksmante")
                            
                            Text("Joined October 2023")
                                .foregroundStyle(Color.white)
                            
                        } .padding(.trailing, 180)
                            .offset(y: -80)
                        
                        
                    }
                    
                    
                    
                    }
             
                    
                    
                    
               
                
               
                
               
                
          }
           
         
        }
        
        
        
    } 
    
}

#Preview {
    ProfileView()
}
