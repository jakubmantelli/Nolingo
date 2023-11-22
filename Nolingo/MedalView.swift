//
//  MedalView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 22/11/23.
//

import SwiftUI

struct MedalView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Medal")
                        .foregroundColor(.white)
                        .padding()
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Dismiss")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                .background(Color(red: 0.08, green: 0.12, blue: 0.15))
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
