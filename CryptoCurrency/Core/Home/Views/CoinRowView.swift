//
//  CoinRowView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack{
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
              
            AsyncImage(url: URL(string: coin.image)) { _image in
                // Una vez que la imagen se ha cargado, la mostramos en un ImageView
                _image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //.aspectRatio(16/3, contentMode: .fit)
                    .frame(width: 40, height: 40) // Tamaño de la imagen
                    .padding(.bottom, 15)
                
            } placeholder: {
                // Este bloque de código se ejecuta mientras la imagen se está cargando
                ProgressView() // Muestra una vista de progreso
            }
        
            // coin info price
            VStack(alignment: .leading, spacing: 5){
                Text(coin.name)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading, 5)
            }
            .padding(.leading, 2 )
            Spacer()
            
            // coin info price
            VStack(alignment: .leading, spacing: 5){
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 5)
                    .foregroundColor(.green)
            }
            .padding(.leading, 2 )
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }
}

let coin1 = Coin(id: "1", symbol: "BTC", name: "Bitcoin", image: "bitcoin.png", currentPrice: 50000.0, marketCap: 1000000000.0, marketCapRank: 1, fullyDilutedValuation: nil, totalVolume: 200000000.0, high24H: 51000.0, low24H: 49000.0, priceChange24H: 1000.0, priceChangePercentage24H: 2.0, marketCapChange24H: 50000000.0, marketCapChangePercentage24H: 5.0, circulatingSupply: 18000000.0, totalSupply: nil, maxSupply: 21000000.0, ath: 60000.0, athChangePercentage: 20.0, athDate: "2022-01-01", atl: 40000.0, atlChangePercentage: -20.0, atlDate: "2021-01-01", lastUpdated: "2022-02-18", sparklineIn7D: nil, priceChangePercentage24HInCurrency: nil)


let coinArray = [
    Coin(id: "1", symbol: "BTC", name: "Bitcoin", image: "bitcoin.png", currentPrice: 50000.0, marketCap: 1000000000.0, marketCapRank: 1, fullyDilutedValuation: nil, totalVolume: 200000000.0, high24H: 51000.0, low24H: 49000.0, priceChange24H: 1000.0, priceChangePercentage24H: 2.0, marketCapChange24H: 50000000.0, marketCapChangePercentage24H: 5.0, circulatingSupply: 18000000.0, totalSupply: nil, maxSupply: 21000000.0, ath: 60000.0, athChangePercentage: 20.0, athDate: "2022-01-01", atl: 40000.0, atlChangePercentage: -20.0, atlDate: "2021-01-01", lastUpdated: "2022-02-18", sparklineIn7D: nil, priceChangePercentage24HInCurrency: nil),
    Coin(id: "2", symbol: "ETH", name: "Ethereum", image: "ethereum.png", currentPrice: 2000.0, marketCap: 500000000.0, marketCapRank: 2, fullyDilutedValuation: nil, totalVolume: 100000000.0, high24H: 2100.0, low24H: 1900.0, priceChange24H: 100.0, priceChangePercentage24H: 5.0, marketCapChange24H: 20000000.0, marketCapChangePercentage24H: 4.0, circulatingSupply: 250000000.0, totalSupply: nil, maxSupply: nil, ath: 3000.0, athChangePercentage: 10.0, athDate: "2022-01-01", atl: 1500.0, atlChangePercentage: -25.0, atlDate: "2021-01-01", lastUpdated: "2022-02-18", sparklineIn7D: nil, priceChangePercentage24HInCurrency: nil)
]


#Preview {
    CoinRowView(coin: coin1)
}

