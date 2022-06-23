//
//  ContentView.swift
//  Shared
//
//  Created by Qin Li on 6/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0
    
    var prefixedNumber: String {
        if number >= 1 && number <= 15 {
            return "B-\(number)"
        } else if number >= 16 && number <= 30 {
            return "I-\(number)"
        } else if number >= 31 && number <= 45 {
            return "N-\(number)"
        } else if number >= 46 && number <= 60 {
            return "G-\(number)"
        } else if number >= 61 && number <= 75 {
            return "G-\(number)"
        } else {
            return "ERROR!"
        }
    }
    
    var body: some View {
        VStack {
            Text("Bingo!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
            
            Text(number == 0 ? "Let's play" : prefixedNumber)
                .font(.largeTitle)
                .padding(.vertical, 150.0)
        
            Button(action: {
                number = Int.random(in: 1...75)
            }) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: 50)
                    .foregroundColor(.indigo)
                    .shadow(color: Color("CustomGray").opacity(0.5), radius: 10, x: 0, y: 0)
                    .overlay(
                        Text("Generate Number")
                            .font(.callout)
                            .foregroundColor(.white)
                    )

            }
            .padding(.horizontal, 40.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
