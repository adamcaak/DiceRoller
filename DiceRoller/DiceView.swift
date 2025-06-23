//
//  DiceView.swift
//  DiceRoller
//
//  Created by Łukasz Adamczak on 23/06/2025.
//

import SwiftUI

struct DiceView: View {
    var numerOfPips: Int = 1
    
    var body: some View {
        Image(systemName: "die.face.\(numerOfPips)")
            .resizable()
            .frame(width: 100, height: 100)
    }
}

#Preview {
    DiceView()
}
