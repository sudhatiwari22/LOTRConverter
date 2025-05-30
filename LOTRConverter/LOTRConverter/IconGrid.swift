
//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Sudha Rani on 16/05/25.
//

import SwiftUI

struct IconGrid: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
 
        // Currency Icons
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if self.selectedCurrency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                    
                    
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.selectedCurrency = currency
                        }
                    
                }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var currency: Currency = .silverPiece
    
    IconGrid(selectedCurrency: $currency)
}
