//
//  HomeView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                // top movers
                TopMoverView(viewmodel: vm)
                
                Divider()
                
                
                // all coins view
                AllCoinView(viewModel: vm)
            }
            .navigationTitle("Lives Prices")
        }
        
    }
}


#Preview {
    HomeView()
}
