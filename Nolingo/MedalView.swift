//
//  MedalView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 22/11/23.
//

import SwiftUI

struct MedalView: View {
    @Environment(\.presentationMode) var presentationMode
    let photo = "medalshare"
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.08, green: 0.12, blue: 0.15)
                
                VStack {
                    Image("medal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .accessibilityLabel("Medals: bronze, silver and gold shiny medals")
                    Text("You have earned 4 medals in league competition!")
                        
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Reach the top 3  in a league to earn medals!")
                        .bold()
                    
                    
                    ShareLink("SHARE", item: photo,  preview: SharePreview("medalshare", image: photo))
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
    MedalView()
}
