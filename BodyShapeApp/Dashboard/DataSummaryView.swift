//
//  DataSummaryView.swift
//  BodyShapeApp
//
//  Created by Daihua Ye on 11/16/23.
//

import SwiftUI

struct DataSummaryView: View {
    let arrow: String
    let calories: String
    
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4
    let numberOfPeopleShowing: Int
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 15) {
                // First Row
                HStack(spacing: 15) { // First Row
                    RoundedRectangle(cornerRadius: 20)
                        .fill(lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay(
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife").foregroundColor(.black)
                                        .padding()
                                        .background(.white)
                                        .clipShape(Circle())
                                    Text("36%")
                                    Image(systemName: arrow)
                                }
                                HStack {
                                    Text(calories)
                                        .font(.title2)
                                        .bold()
                                    Text("calories")
                                        .font(.subheadline)
                                }
                            }
                        )
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: geometry.size.width * (1 - percent1) - delta)
                        .overlay(
                            VStack {
                                Image(systemName: "figure.walk")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                Text("4.569")
                                    .font(.title2)
                                    .bold()
                            }
                        )
                }.frame(height: geometry.size.width * (1 - percent1) - delta)
                // Second Row
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .overlay(
                            Text("Start")
                                .background(.black)
                                .foregroundColor(.white)
                                .bold()
                        ).frame(width: geometry.size.width * percent2 - delta, height: geometry.size.width * percent2 - delta)
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: geometry.size.width * (1 - percent2) - delta, height: geometry.size.width * percent2 - delta)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Members")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                                let circleDim = 45.0
                                let extraPeople = min(peopleImages.count, numberOfPeopleShowing)
                                HStack(spacing: -10) {
                                    ForEach(0..<extraPeople, id: \.self) { i in
                                        CircleImageView(imageName: peopleImages[i], color: .white, size: circleDim, lineWidth: 1)
                                    }
                                    if (peopleImages.count > numberOfPeopleShowing) {
                                        CircleCountView(count: peopleImages.count - numberOfPeopleShowing, size: circleDim, lineWidth: 1)
                                    }
                                }
                                
                            }
                        )
                }
            }
        }
    }
}

#Preview {
    DataSummaryView(arrow: "arrow.down", calories: "2.346", numberOfPeopleShowing: 2)
}
