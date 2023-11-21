//
//  ContentView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 14/11/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    let  selectionFeedback = UIImpactFeedbackGenerator()
    var body: some View {
        
        
        
        NavigationView {
            
            
            
       
                TabView() {
                    
                    Group{
                        
                        HomeView()
                            .tabItem {
                                
                                Image(systemName: "house.fill")
                                Text("Home")
                                    .onTapGesture {
                                        selectionFeedback.impactOccurred()
                                    }
                            }
                            
                 
                        
                        ProfileView()
                            .tabItem {
                                
                                Image(systemName: "person.fill")
                                    .onTapGesture {
                                        selectionFeedback.impactOccurred()
                                    }
                                Text("Profile")
                                   
                            }
                            
                        
                    }
                    .toolbarBackground(Color(red: 0.08, green: 0.12, blue: 0.15), for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                    
                }
            
        }
            
        
        
        
        .preferredColorScheme(.dark)
        .navigationBarHidden(true)
            
        }
    }
    
    

    
    
    
    
    
    
    #Preview {
        ContentView()
    }


