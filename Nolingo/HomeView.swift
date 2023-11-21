//
//  HomeView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 15/11/23.
//

import SwiftUI

struct HomeView: View {

    
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.08, green: 0.12, blue: 0.15)
                .ignoresSafeArea()
            
            
            
            VStack {
                
                
                Rectangle()
                    .foregroundColor(Color(red: 0.36, green: 0.84, blue: 0.01))
                    .frame(width: 380, height: 80)
                    .cornerRadius(10)
                    
                    .overlay(
                                           VStack(spacing: 5) {
                                               Text("BEGINNER 1, UNIT 1")
                                                   .foregroundColor(Color.white.opacity(0.6))
                                                   .font(.subheadline)
                                                   .bold()
                                               Text("Learn Korean vowels, learn Korean consonants")
                                                   .foregroundColor(Color.white)
                                                   .font(.subheadline)
                                                   .bold()
                                                 
                                           }
                                           .padding()
                                           
                                           
                    )
                   
                    .offset(y: 15)
                                       .zIndex(1)
             
               
                
                ScrollView {
                    
                    
                    //STACK FOR BUTTONS
                    LazyVStack {
                        
                        ClickableButton()
                            .accessibility(label: Text("Level One, unit one"))
                            .offset(y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Two, unit one"))
                            .offset(x: -50, y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Three, unit one"))
                            .offset(x: -90, y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Four, unit one"))
                            .offset(x: -50, y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Five, unit one"))
                            .offset(y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Six, unit one"))
                            .offset(x:50,y:15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Seven, unit one"))
                            .offset(x: 90, y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Eight, unit one"))
                            .offset(x: 50, y: 15)
                        
                        ClickableButton()
                            .accessibility(label: Text("Level Nine, final unit one level"))
                            .offset(y: 15)
                        
                        
                        Spacer(minLength: 150)
                        
                        
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level One, unit two"))
                            .offset(y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Two, unit two"))
                            .offset(x: -50, y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Three, unit two"))
                            .offset(x: -90, y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Four, unit two"))
                            .offset(x: -50, y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Five, unit two"))
                            .offset(y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Six, unit two"))
                            .offset(x:50,y:15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Seven, unit two"))
                            .offset(x: 90, y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Eight, unit two"))
                            .offset(x: 50, y: 15)
                        
                        ClickableButtonPurple()
                            .accessibility(label: Text("Level Nine, final unit two level"))
                            .offset(y: 15)
                        
                        
                        
                        
                        
                        Spacer(minLength: 30)
                    }
                }
       
              
                

            }
                         }
                     }
                 }
    

#Preview {
    HomeView()
}
