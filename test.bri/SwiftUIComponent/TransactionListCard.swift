//
//  TransactionListCard.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct TransactionListCard: View {
    var body: some View {
        HStack() {
            Image(systemName: "creditcard.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
            VStack(alignment: .leading, spacing: 4) {
                Text("Kartu Kredit BRI")
                    .bold()
                    .foregroundColor(.black)
                Text("6328****234")
                Text("Rp100.000")
                    .bold()
                    .foregroundColor(.blue)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                Text("31 November 2021")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Text("12:34")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Text("Purchase")
                    .foregroundColor(.green)
                    .bold()
            }
        }
        .cardStyle()
        .padding()
    }
}


#Preview {
    TransactionListCard()
}
