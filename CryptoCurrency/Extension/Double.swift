//
//  Double.swift
//  CryptoCurrency
//
//  Created by macOS abel on 22/02/24.
//

import Foundation

extension Double {
    
    private var currentPriceFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        //formatter.usesGroupingSeparator = true
        formatter.numberStyle = .decimal
        //formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var priceChangeFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        //formatter.usesGroupingSeparator = true
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency()-> String{
        guard let numerASString = currentPriceFormatter.string(for: self) else { return "$"}
        return "$" + numerASString
    }
    
    func toPercentString()-> String{
        guard let numerASString = priceChangeFormatter.string(for: self) else { return "%"}
        return numerASString + "%"
    }
}
