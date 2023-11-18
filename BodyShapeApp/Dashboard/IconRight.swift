//
//  IconRight.swift
//  BodyShapeApp
//
//  Created by Daihua Ye on 11/9/23.
//

import SwiftUI

struct IconRight: View {
    let imageName: String
    var angle = 0.0
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: imageName)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                .rotation3DEffect(
                    .degrees(angle),
                    axis: (x: 0, y: 0, z: 1)
                )
        }
    }
}

#Preview {
    VStack {
        IconRight(imageName: "circle.grid.cross.fill", angle: 45)
            .padding()
        Spacer()
    }
}
