//
//  HomeView.swift
//  CryptoCurrency
//
//  Created by macOS abel on 21/02/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    @State private var sortOrder: SortOrder = .date
    
    var body: some View {
        NavigationView{
            VStack{
                TopMoverView(viewmodel: vm)
                ScrollView(.vertical, showsIndicators: false){
                    // top movers
                    //TopMoverView(viewmodel: vm)
                    Text("Este es un título largo que se desplazará con el contenido")
                      .navigationBarTitleDisplayMode(.inline)
                    Divider()
                    
                    // all coins view
                    AllCoinView(viewModel: vm)
                }
                .navigationBarItems(leading:
                                        MyView()
                  )
                  
                
                
                /*
                .navigationBarItems(
                    leading:
                        HStack {
                            //Image(systemName: "person.fill")
                            Text("Usuario")
                        },
                    trailing:
                        Text("Opciones")
                )
                */
                
            }
        }
    }
}


#Preview {
    HomeView()
}
