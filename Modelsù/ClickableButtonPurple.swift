//
//  ClickableButton.swift
//  Nolingo
//
//  Created by Jakub Mantelli on 18/11/23.
//

import SwiftUI

struct ClickableButtonPurple: View {
    @State private var isButtonClickedPurple = true

    var body: some View {
        Button(action: {
            self.isButtonClickedPurple = true
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }) {
            Image(isButtonClickedPurple ? buttonUnclickedPurple : buttonClickedPurple)
                .resizable()
                .frame(width: 80, height: 80)
        }
        .buttonStyle(PlainButtonStyle())
        .simultaneousGesture(
            TapGesture()
                .onEnded { _ in
                    self.isButtonClickedPurple = false
                }
        )
        .simultaneousGesture(
            LongPressGesture(minimumDuration: 0.01)
                .onChanged { _ in
                    self.isButtonClickedPurple = true
                }
                .onEnded { _ in
                    self.isButtonClickedPurple = false
                }
        )
    }
}
    


#Preview {
    ClickableButtonPurple()
}
