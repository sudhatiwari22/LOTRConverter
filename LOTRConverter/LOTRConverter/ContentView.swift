//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Sudha Rani on 15/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            // Background Image
            
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                
                //Currency Exchange Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Conversion section
                
                HStack {
                    // Left conversion section
                    
                    VStack {
                        // currency
                        
                        HStack {
                            // Currency Image
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //Text Field
                        Text("Text Field")
                    }
                    
                    // Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    // Right Conversion section
                    
                    VStack {
                        // currency
                        
                        HStack {
                            // Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency Image
                            Image(.goldpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //Text Field
                        Text("Text Field")
                    }

                }
                
                Spacer()
                
                //Info Button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
