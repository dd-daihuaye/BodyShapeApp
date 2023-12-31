//
//  ContentView.swift
//  BodyShapeApp
//
//  Created by Daihua Ye on 11/5/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(imageName: "circle.grid.cross.fill",angle: 45)
                .padding()
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Emily")
                WeightView(weight: 62.5, weightUnits: "lb")
                DataSummaryView(arrow: "arrow.down", calories: "2.346", numberOfPeopleShowing: 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(20)
            Spacer()
            ButtonsView()
        }
    }
}

#Preview {
    DashboardView()
}
