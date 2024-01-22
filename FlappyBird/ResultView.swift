//
//  ResultView.swift
//  FlappyBird
//
//  Created by DARYA on 1/29/24.
//

import SwiftUI

struct ResultView: View {
    let score: Int
    let hightScore: Int
    let resetAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                .padding()
            Text("Score \(score)")
                .font(.title)
            Text("Best \(hightScore)")
                .padding()
            Button("Resert", action: resetAction)
                .buttonStyle(.borderedProminent)
                .padding()
        }
        .background(.white.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ResultView(score: 10, hightScore: 100, resetAction: {} )
}
