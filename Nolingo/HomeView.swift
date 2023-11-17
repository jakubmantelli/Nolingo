//
//  HomeView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 15/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        
        ScrollView {
            
            Spacer(minLength: 50)
            //STACK FOR BUTTONS
            LazyVStack {
                
                Button(action: {
                 
                    // Action when the button is tapped
                })
                
                {
                    
                    Text("Level One")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level One")
                    
                    
                }
                Image(.button)
                    .padding()
                
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Two")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Two")
                }
                Image(.button)
                
                    .offset(x: 30)
                    .padding()
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Three")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Three")
                }
                Image(.button)
                    .offset(x: 60)
                    .padding()
                
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Four")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Four")
                }
                
                Image(.button)
                    .offset(x: 90)
                    .padding()
                
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Five")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Five")
                }
                Image(.button)
                .offset(x: 60)
                .padding()
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Six")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Six")
                }
                Image(.button)
                    .padding()
                
                
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Seven")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Seven")
                }
                Image(.button)
                .offset(x: -30)
                .padding()
                
                Button(action: {
                    // Action when the button is tapped
                }) {
                    Text("Level Eight")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Eight")
                }
                Image(.button)
                .offset(x: -60)
                .padding()
                
                Button(action: {
                    // Action when the button is tapped
                    }) {
                    Text("Final Level")
                        .foregroundColor(.clear)
                        .padding()
                        .accessibilityLabel("Level Nine, final level")
                }
                Image(.button)
                    .offset(x: -90, y: -50)
                .padding()
                
                
                
                
            }
            
            
            
            
            
        }
        
        
        .background(Color(red: 0.08, green: 0.12, blue: 0.15))
        .ignoresSafeArea()
        
        
    }
    
}

#Preview {
    HomeView()
}
