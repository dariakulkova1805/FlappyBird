//
//  BirdView.swift
//  FlappyBird
//
//  Created by DARYA on 1/22/24.
//

import SwiftUI

struct BirdView: View {
    
    let birdSize: CGFloat
    
    var body: some View {
        Image(.flappyBird)
            .resizable()
            .scaledToFit()
            .frame(width: birdSize, height: birdSize)
    }
}

#Preview {
    BirdView(birdSize: 100)
}
