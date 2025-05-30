//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Sudha Rani on 30/05/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap left or right currency to bring up to Select Currency Screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
