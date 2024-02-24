//
//  SortingOptionsView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 22/02/24.
//

import SwiftUI

enum SortOrder: String {
    case date
    case name
}


struct SortingOptionsView: View{
    
    var body: some View {
        
        VStack(alignment: .leading){
            //VStack(alignment: .leading)
            HStack{
                Text("Watchlist")
                    .foregroundColor(.secondary)
                
                Text("Coin")
            }
            //.background(Color("itemBackgroundColor"))
            
            HStack{
                Button{
                    
                } label: {
                    Text("Hot")
                    
                }
                Spacer()
                Button{
                    
                } label: {
                    Text("MarketCap")
                }
                Spacer()
                Button{
                    
                } label: {
                    Text("Price")
                }
                Spacer()
                Button{
                    
                } label: {
                    Text("24h Change")
                }
                
            }
            .foregroundColor(.secondary)
            .padding(.horizontal)
            .padding(.vertical, 2)
        }
        .fontWeight(.bold)
        .padding()
        .background(Color("itemBackgroundColor"))
        //.alignmentGuide(.top) { _ in 0 }    // fijar view
    }
}

/*
#Preview {
    SortingOptionsView()
}
*/
