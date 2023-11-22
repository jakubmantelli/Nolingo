//
//  ProfileView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 15/11/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var isActive: Bool = false
    @State private var tapCount: Int = 0
    @State private var isShaking: Bool = false
    @State private var isStreakPresented = false
    @State private var isExpPresented = false
    @State private var isLeaguePresented = false
    @State private var isMedalPresented = false

    var body: some View {
        
        
        
        
        
        
        
        NavigationStack {
            ZStack {
// Background image
                           Image("background")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                              
                               .padding(.bottom, -400)
                               
                               .ignoresSafeArea()
                Color.clear
                                  .contentShape(Rectangle())
                                  .onTapGesture {
                                      // empty
                                  }

                           // Avatar image
                           Image("avatar")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 150)
                               .offset(y: 15)
                               .padding(.bottom, -250)
                               .ignoresSafeArea()
                               .onTapGesture {
                                   tapCount += 1

                                   if tapCount == 5 {
// Trigger vibration after 5 taps
                                       UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                           UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                                       }
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                           UIImpactFeedbackGenerator(style: .soft).impactOccurred()
                                       }
                                       UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                           UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                                       }
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                           UIImpactFeedbackGenerator(style: .soft).impactOccurred()
                                       }
//anim func shake
                                       shake()
                                                              
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                           tapCount = 0
                                           isShaking = false
                                       }
                                   } else {
                                   
                                       UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                   }
                               }
                               .offset(x: isShaking ? -5 : 5, y: 0)
            }
            
            
            HStack {
                
                
                
                
                
                ScrollView {
                    
                    LazyVStack {
                        
                        
//Profile page, name and data
                        Spacer(minLength: 100)
                        VStack(alignment: .leading) {
                            Text("Jakub")
                                .bold()
                                .font(.title)
                                .foregroundColor(.white)
                                .accessibilityLabel("Jakub, profile name")
                            Text("jaksmante")
                                .accessibilityLabel("Jaksmante, User ID")
                            Text("Joined October 2023")
                                .foregroundStyle(Color.white)
                        }
                        .padding(.trailing, 180)
                        .offset(y: -80)
                        
                        
                        
// Add Friends button
                        Button {
                            UIImpactFeedbackGenerator(style: .light).impactOccurred()
                        }
                    label: {
                        HStack {
                            Image(systemName: "person.fill.badge.plus")
                            
                                .padding()
                            
                            Text ("Add Friends")
                            
                            Spacer()
                        }
                        .foregroundColor(.blue)
                        .bold()
                        .padding(50)
                        .foregroundColor(.white)
                        .frame(width: 275, height: 50)
                        .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 0.5)
                            
                        )
                        
                        
                    }        .accessibilityLabel("Add Friends")
                            .offset(x: -40, y: -50)
                        
// Share Button
                        
                        
                        Button {
                            UIImpactFeedbackGenerator(style: .light).impactOccurred()
                        }
                    label: {
                        ShareLink("", item: "https://www.duolingo.com/profile/jaksmante?via=share_profile")
                            .offset(x:4)
                            .foregroundColor(.blue)
                            .bold()
                            .frame(width: 50, height: 50)
                            .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 0.5))
                    }
                        
                        
                        
                            .accessibilityLabel("Share")
                            .offset(x: 150, y: -107)
                    
                        
                        
                        
                    } .padding(.bottom, -90)
                    
                    
//Divider
                    Divider()
                    
//Stats section scroll view
                    
                    Text ("Statistics")
                    // Day streak stat
                    Button(action: {
                                isStreakPresented.toggle()
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }) {
                        
                        
                        
                        
                        VStack {
                            Text("🔥42")
                                .bold()
                                .padding(.trailing)
                              
                                
                            Text("Day Streak")
                                .opacity(0.2)
                                .bold()
                            
                               
                            
                        }
                            .foregroundColor(.white)
                            .frame(width: 180, height: 70)
                            .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )
                    }
                    .offset(x: -100)
                    .sheet(isPresented: $isStreakPresented) {
                        StreakView()
                    }
                    
            
                    
                    
                    
                    
//EXP STATS BUTTON
                    Button(action: {
                        isExpPresented.toggle()
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }) {
                        
                        VStack {
                            Text("⚡️2.4k")
                                .bold()
                                .padding(.trailing)
                                
                            Text("Total XP")
                                .opacity(0.2)
                                .bold()
                                .frame(width: 70)
                            
                        }
                            .foregroundColor(.white)
                            .frame(width: 180, height: 70)
                            .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 0.5)
                                
                            )
                        
                        
                    } .offset(x: 100, y: -78)
                        .sheet(isPresented: $isExpPresented) {
                            ExpView()
                        }
                    
//  League Stats button
                    Button(action: {
                        isLeaguePresented.toggle()
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }) {
                    
                        VStack {
                            Text("Sapphire")
                                .bold()
                            Text("Current League")
                                .bold()
                                .opacity(0.2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 180, height: 70)
                        .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 0.5)
                            
                        )
                    
                    
                } .offset(x: -100, y: -70)
                        .sheet(isPresented: $isLeaguePresented) {
                            LeagueView()
                        }
                    
//Medal stats button
                    Button(action: {
                        isMedalPresented.toggle()
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }) {
                    
                        VStack {
                            Text("🥇 4")
                                .bold()
                                .padding(.trailing)
                            Text ("Top 3 finishes")
                                .opacity(0.2)
                                .bold()
                        }
                        .foregroundColor(.white)
                        .frame(width: 180, height: 70)
                        .background(Color(red: 0.08, green: 0.12, blue: 0.15))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 0.5)
                            
                        )
                    
                    
                } .offset(x: 100, y: -150)
                        .sheet(isPresented: $isMedalPresented) {
                            MedalView()
                        }
                    
                    
                    
                    
                    
                    Divider()
                    
                    
                    
                    
// Achievements View
                
                    Text ("Achievements")
                } 
            }
            
// END
            
            
            
            
            
            .background(Color(red: 0.08, green: 0.12, blue: 0.15))
            
        }

    }
    
    private func shake() {
        withAnimation(Animation.spring(response: 0.1, dampingFraction: 0.5)) {
            isShaking.toggle()
        }
        
       //delay for next shake
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            if tapCount == 5 {
                self.shake()
            } else {
                isShaking = false
            }
        }
    }
    
}




#Preview {
    ProfileView()
}
