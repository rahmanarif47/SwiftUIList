//
//  SegmentedControlView.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selectedIndex: Int = 0
    let segments = ["Kartu", "QRIS"]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments.indices, id: \.self) { index in
                Button(action: {
                    selectedIndex = index
                }) {
                    Text(segments[index])
                        .font(.headline)
                        .foregroundColor(selectedIndex == index ? .white : .blue)
                        .frame(maxWidth: 80, minHeight: 30)
                        .background(
                            selectedIndex == index ? Color.blue : Color.clear
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(selectedIndex == index ? Color.blue : Color.clear, lineWidth: 2)
                        )
                }
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.blue, lineWidth: 2)
        )
        .cornerRadius(8)
        .padding()
    }
}
