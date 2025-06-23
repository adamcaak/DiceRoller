//
//  DiceView.swift
//  DiceRoller
//
//  Created by Łukasz Adamczak on 23/06/2025.
//

import SwiftUI

struct DiceView: View {
    @State private var numerOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numerOfPips)")
                .resizable()
                .frame(width: 100, height: 100)
            Button("Roll") {
                withAnimation {
                    numerOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
