//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var coins: [Coin] = []
    @Published var TopCoins: [Coin] = []
     
    init(){
        fetchCoinData()
    }
    
    //func fetchCoinData()async throws{
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            if let error = error {
                print("DEBUG error: \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG code: \(response.statusCode )")
            }
            
            
            guard let data = data else{
                return
            }
            //let dataString = String(data: data, encoding: .utf8)
            //print("DEBUG data: \(dataString)")
            
            do{
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins()
                }
                
            } catch(let error) {
                print("failed decodable with code: \(error)")
            }
            
            
        }
        .resume()
    }
    
    func configureTopMovingCoins(){
        let topMovers = coins.sorted(by: {
            $0.priceChangePercentage24H > $1.priceChangePercentage24H
        })
        self.TopCoins = Array(topMovers.prefix(6))
    }
    
}

