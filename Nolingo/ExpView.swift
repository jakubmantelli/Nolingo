//
//  ExpView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 22/11/23.
//

import SwiftUI

struct ExpView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    private let photo = Image("expshare")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.08, green: 0.12, blue: 0.15)
                
                VStack {
                    Image("exp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .accessibilityLabel("XP: yellow thunder")
                    Text("You have earned 2404 XP!")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Do more lessons to earn more XP!")
                        .bold()
                    
                    
                    ShareLink("SHARE", item: photo,  preview: SharePreview("expshare", image: photo))
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
    ExpView()
}
