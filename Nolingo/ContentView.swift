//
//  ContentView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 14/11/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var selectedTab: Int = 0
    let  selectionFeedback = UIImpactFeedbackGenerator()
    var body: some View {
        
        
        
        NavigationView {
            
            
            
       
                TabView(selection: $selectedTab) {
                    
                    
                    HomeView()
                        .tabItem {
                            
                            Image(systemName: "house.fill")
                            Text("Home")
                        } .onTapGesture {
                            selectionFeedback.impactOccurred()
                        }
                    
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }  .onTapGesture {
                            selectionFeedback.impactOccurred()
                        }
                        
                    
                    
                }
            }
            
        
        
        
        .preferredColorScheme(.dark)
            
            
        }
    }
    
    

    
    
    
    
    
    
    #Preview {
        ContentView()
    }

