//
//  ContentView.swift
//  DiceRoller
//
//  Created by Łukasz Adamczak on 23/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            HStack {
                ForEach(0..<numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .buttonStyle(.bordered)
                
                Button("Add") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
