//
//  TopMoverView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI

struct TopMoverView: View {
    @StateObject var viewmodel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing: 12){
                    ForEach(viewmodel.TopCoins){ coin in
                        TopMoverItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

/*
#Preview {
    TopMoverView()
}
*/
