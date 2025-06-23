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
                .foregroundStyle(.white)
            HStack {
                ForEach(0..<numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
