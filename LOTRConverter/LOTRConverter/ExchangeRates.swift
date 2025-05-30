//
//  ExchangeRates.swift
//  LOTRConverter
//
//  Created by Sudha Rani on 15/05/25.
//

import SwiftUI

struct ExchangeRates: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            
            // left currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRates(leftImage: .silverpiece,
                  text: "1 Silver Piece = 4 Silver Pennies",
                  rightImage: .silverpenny)
}
