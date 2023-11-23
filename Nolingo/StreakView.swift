//
//  StreakView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 22/11/23.
//

import SwiftUI

struct StreakView: View {
    
    private let photo = Image("streakshare")
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.08, green: 0.12, blue: 0.15)
                
                VStack {
                    Image("streak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .accessibilityLabel("Streak: duolingo owl, logo in flames")
                    Text("You are on a 42 day streak!")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Keep the flame lit every day!")
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    ShareLink("SHARE", item: photo,  preview: SharePreview("streakshare", image: photo))
                        .padding()
                       
                          
                    
                    
                    
                    
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Dismiss")
                            .foregroundColor(Color(red: 0.11, green: 0.69, blue: 0.96))
                            .padding()
                            .bold()
                    }
                    .padding()
                }
                .cornerRadius(10)
                .padding()
            }
            .ignoresSafeArea(.all)
        }
        }
    }

#Preview {
    StreakView()
}
