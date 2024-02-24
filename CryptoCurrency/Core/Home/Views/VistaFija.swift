//
//  VistaFija.swift
//  CryptoCurrency
//
//  Created by macOS abel on 23/02/24.
//

import SwiftUI

struct MyView: View {
  @State private var scrollToIndex = 0
  
  var body: some View {
    NavigationView {
      ScrollViewReader { reader in
        ScrollView {
          ForEach(0..<55) { index in
            Text("Vista \(index + 1)")
              .id(index)
          }
        }
        .navigationBarItems(trailing: Button(action: {
          scrollToIndex = 5
        }) {
          Text("Fijar vista 5")
        })
        .onAppear {
          reader.scrollTo(scrollToIndex, anchor: .top)
        }
      }
    }
  }
}
#Preview {
    MyView()
}
