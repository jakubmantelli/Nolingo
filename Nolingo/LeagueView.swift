//
//  LeagueView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 22/11/23.
//

import SwiftUI

struct LeagueView: View {
    @Environment(\.presentationMode) var presentationMode
    private let photo = "leagueshare"
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.08, green: 0.12, blue: 0.15)
                
                VStack {
                    Image("league")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .accessibilityLabel("League: A shiny shappire coin with a feather inside")
                    Text("You have made it to the Shappire League!")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("You have been here for 2 weeks!")
                        .bold()
                    
                    
                    ShareLink("SHARE", item: photo,  preview: SharePreview("leagueshare", image: photo))
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
    LeagueView()
}
