//
//  LineView.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct LineView: View {
    var color: Color = Color.gray.opacity(0.3)
    var height: CGFloat = 1
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
