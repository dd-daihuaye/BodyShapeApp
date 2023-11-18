//
//  FillBarView.swift
//  BodyShapeApp
//
//  Created by Daihua Ye on 11/16/23.
//

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorBG.opacity(0.7))
                    .frame(width: .infinity, height: barWidth)
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorFill)
                    .frame(width: percentage * geometry.size.width, height: barWidth)
            }
            
        }.frame(width: .infinity, height: barWidth)
    }
}

#Preview {
    FillBarView(barWidth: 7, colorBG: .black, colorFill: .lightGreen, percentage: 0.3)
        .padding()
}
