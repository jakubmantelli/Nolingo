//
//  ActionBoxView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 18/11/23.
//

import SwiftUI

struct ActionBoxView: View {
    var closeActionBox: () -> Void
    var buttonType: HomeView.ButtonType
    var body: some View {
        VStack {
            Text("Action Box Content")
                .padding()
            Button("Close") {
                self.closeActionBox()
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
        .onTapGesture {
            // Optionally close the action box when tapped outside of it
            self.closeActionBox()
        }
    }
}

