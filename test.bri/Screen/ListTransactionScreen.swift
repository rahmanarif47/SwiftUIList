//
//  ListTransactionScreen.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct ListTransactionScreen: View {
    var body: some View {
        renderNavView()
        Divider()
        OutletCardView()
        renderViewSegmentedView()
        Spacer()
        renderListView()
    }
    
    func renderNavView() -> some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Daftar Transaksi")
                    .font(.headline)
                    .bold()
                Spacer()
            }
            .padding()
        }
    }
    
    func renderViewSegmentedView() -> some View {
        HStack {
            SegmentedControlView()
            
            Spacer()
            HStack {
                Button(action: {
                }) {
                    HStack {
                        Text("Filter")
                            .font(.footnote)
                        Image(systemName: "slider.horizontal.3")
                    }
                    .foregroundColor(.black)
                    .frame(maxWidth: 80, minHeight: 30)
                    .padding(.horizontal)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 2) // 🔹 outer
                        )
                        .cornerRadius(8)
                }
                
            }
            .padding()
        }
    }
    
    func renderListView() -> some View {
        List() {
            ForEach(0..<10, id: \.self) { _ in
                TransactionListCard()
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
            }
        }
        .listStyle(.plain)
    }
}
#Preview {
    ListTransactionScreen()
}
