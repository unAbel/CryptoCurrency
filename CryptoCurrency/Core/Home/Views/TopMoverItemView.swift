//
//  TopMoverItemView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI

struct TopMoverItemView: View {
    var body: some View {
        let nameCoin: String = "BTC"
        let namePrice: String = "$ 2.99"
        VStack(alignment: .leading, spacing: 5){
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            HStack{
                Text(nameCoin)
                    .font(.caption)
                    .fontWeight(.bold)
                Text(namePrice)
                    .font(.caption)
                    .fontWeight(.bold)
            }

            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray6), lineWidth: 4)
        }
    }
}

#Preview {
    TopMoverItemView()
}
