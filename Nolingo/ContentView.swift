//
//  ContentView.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 14/11/23.
//

import SwiftUI
let impactFeedback = UIImpactFeedbackGenerator()
let notificationFeedback = UINotificationFeedbackGenerator()
let  selectionFeedback = UISelectionFeedbackGenerator()
struct ContentView: View {
    var body: some View {
        
        VStack {
           
            Button("impact") {
                impactFeedback.impactOccurred()
            }
            .padding()
            Button("notification") {
                notificationFeedback.notificationOccurred(.success)
            }
            .padding()
            Button("selection") {
                selectionFeedback.selectionChanged()
            }
            .padding()
            Text("looking for duolingo? this is nolingo!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
