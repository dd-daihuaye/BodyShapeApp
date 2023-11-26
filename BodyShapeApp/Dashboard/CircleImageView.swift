//
//  CircleImageView.swift
//  BodyShapeApp
//
//  Created by daihua ye on 11/20/23.
//

import SwiftUI

struct CircleImageView: View {
    let imageName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(color, lineWidth: lineWidth)
            ).frame(width: size, height: size)
        
    }
}

struct CircleCountView: View {
    let count: Int
    let size: CGFloat
    let lineWidth: CGFloat
    var backgroundColor: Color = .white
    var body: some View {
        Circle()
            .fill(backgroundColor)
            .overlay(
                ZStack {
                    Circle()
                        .stroke(lineWidth: lineWidth)
                    Text("+\(count)")
                        .font(.subheadline)
                        .bold()
                }
            ).frame(width: size)
    }
}

#Preview {
    
    ZStack {
        lightPurple.ignoresSafeArea()
        HStack(spacing: -30) {
            CircleImageView(imageName: people1, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imageName: people2, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imageName: people3, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imageName: people4, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imageName: people1, color: .white, size: 70, lineWidth: 1)
            CircleImageView(imageName: people2, color: .white, size: 70, lineWidth: 1)
            CircleCountView(count: 2, size: 70, lineWidth: 1)
        }
    }
}
