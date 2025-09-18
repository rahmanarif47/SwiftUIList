//
//  CardViewStyle.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct CardStyle: ViewModifier {
    var cornerRadius: CGFloat = 12
    var borderColor: Color = Color.gray.opacity(0.3)
    var borderWidth: CGFloat = 2
    var backgroundColor: Color = .white
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
    }
}

extension View {
    func cardStyle(
        cornerRadius: CGFloat = 12,
        borderColor: Color = Color.gray.opacity(0.3),
        borderWidth: CGFloat = 2,
        backgroundColor: Color = .white
    ) -> some View {
        self.modifier(
            CardStyle(
                cornerRadius: cornerRadius,
                borderColor: borderColor,
                borderWidth: borderWidth,
                backgroundColor: backgroundColor
            )
        )
    }
}
