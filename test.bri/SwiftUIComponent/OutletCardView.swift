//
//  OutletCardView.swift
//  test.bri
//
//  Created by Arif Rahman Mac Mini on 18/09/25.
//

import SwiftUI

struct OutletCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Bagian atas: Logo + Nama + Info transaksi
            HStack(alignment: .top, spacing: 08) {
                Image(systemName: "creditcard.fill") // bisa ganti logo bank
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bakso Mat Solar Cabang 1")
                        .font(.subheadline)
                        .bold()
                    
                    HStack(spacing: 6) {
                        Text("Rp1.000.000.000")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 5, height: 5)
                        
                        Text("1200 Transaksi")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1)
            )
            .background(Color.white)
            
            HStack {
                HStack {
                    Text("EDC")
                        .font(.caption)
                        .fontWeight(.bold)
                    Circle()
                        .fill(.black)
                        .frame(width: 4, height: 4)
                    Text("123456")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding()
                }
                .padding(.leading, 8)
                Spacer()
                Button(action: {
                }) {
                    HStack {
                        Text("Ubah Outlet")
                            .font(.footnote)
                        Image(systemName: "chevron.down")
                    }
                    .foregroundColor(.blue)
                    .frame(maxWidth: 100, minHeight: 30)
                    .foregroundColor(.blue)
                }
                .padding(.trailing, 8)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.6), lineWidth: 1)
        )
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
        .padding(.horizontal)
    }
}

#Preview {
    OutletCardView()
}
