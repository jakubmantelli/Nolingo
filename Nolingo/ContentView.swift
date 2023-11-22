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
    @State var tabSelection = 0
    var body: some View {
        
        
        
        NavigationView {
            
            
            
       
            TabView(selection: $tabSelection) {
                    
                    Group{
                        
                        HomeView()
                            .tabItem {
                                
                                Image(systemName: "house.fill")
                                Text("Home")
                                    .onTapGesture {
                                        selectionFeedback.impactOccurred()
                                    }
                            }
                            .tag(0)
                            
                 
                        
                        ProfileView()
                            .tabItem {
                                
                                Image(systemName: "person.fill")
                                    .onTapGesture {
                                        selectionFeedback.impactOccurred()
                                    }
                                Text("Profile")
                                   
                            }
                            .tag(1)
                        
                    }
                    
                    .sensoryFeedback(.impact, trigger: tabSelection)
                    
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


