//
//  TopMoverItemView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI
//import URLImage

struct TopMoverItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            AsyncImage(url: URL(string: coin.image)) { _image in
                // Una vez que la imagen se ha cargado, la mostramos en un ImageView
                _image
                    .resizable()
                    //.aspectRatio(contentMode: .fit)
                    .aspectRatio(16/10, contentMode: .fit)
                    .frame(width: 40, height: 40) // Tamaño de la imagen
                    .padding(.bottom, 15)
                
            } placeholder: {
                // Este bloque de código se ejecuta mientras la imagen se está cargando
                ProgressView() // Muestra una vista de progreso
            }
                        //.padding()
            
            HStack(spacing: 10){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Text("\(coin.priceChangePercentage24H)")
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
    TopMoverItemView(coin: coin1)
}

