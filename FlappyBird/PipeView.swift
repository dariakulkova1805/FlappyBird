//
//  PipeView.swift
//  FlappyBird
//
//  Created by DARYA on 1/26/24.
//

import SwiftUI

struct PipeView: View {
    
    let topPipeHeight: CGFloat
    let pipeWidht: CGFloat
    let pipeSpacing: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let avaliableSpacing = geometry.size.height - pipeSpacing
            let bottomPipeHeight = avaliableSpacing - topPipeHeight
            
            VStack {
                Image(.flappeBirdPipe)
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWidht,
                           height: topPipeHeight)
                
                Spacer()
                    .frame(height: pipeSpacing)
                
                Image(.flappeBirdPipe)
                    .resizable()
                    .frame(width: pipeWidht, height: bottomPipeHeight)
            }
        }
    }
}

#Preview {
    PipeView(topPipeHeight: 300,
             pipeWidht: 100,
             pipeSpacing: 100)
}
