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
            Image(systemName: "die.face.\(numerOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
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
