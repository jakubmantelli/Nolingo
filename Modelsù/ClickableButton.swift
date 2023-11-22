//
//  ClickableButton.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 18/11/23.
//



import SwiftUI

struct ClickableButton: View {
    @State private var isButtonClicked = true

    var body: some View {
        Button(action: {
            self.isButtonClicked = true
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }) {
            Image(isButtonClicked ? buttonUnclicked : buttonClicked)
                .resizable()
                .frame(width: 80, height: 80)
        }
        .buttonStyle(PlainButtonStyle())
        .simultaneousGesture(
            TapGesture()
                .onEnded { _ in
                    self.isButtonClicked = false
                }
        )
        .simultaneousGesture(
            LongPressGesture(minimumDuration: 0.01)
                .onChanged { _ in
                    self.isButtonClicked = true
                }
                .onEnded { _ in
                    self.isButtonClicked = false
                }
        )
    }
}
    


#Preview {
    ClickableButton()
}

