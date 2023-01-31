//
//  StarRateView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct StarRateView: View {

    @State var stars: [Bool] = Array(repeating: false, count: 5)

    var body: some View {
        HStack {
            Button {
                markStars(1)
            } label: {
                if stars[0] {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.myGray)
                }
            }
            Button {
                markStars(2)
            } label: {
                if stars[1] {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.myGray)
                }
            }
            Button {
                markStars(3)
            } label: {
                if stars[2] {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.myGray)
                }
            }
            Button {
                markStars(4)
            } label: {
                if stars[3] {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.myGray)
                }
            }
            Button {
                markStars(5)
            } label: {
                if stars[4] {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.fill")
                        .foregroundColor(.myGray)
                }
            }
        }
    }
    private func markStars(_ int: Int) {
        guard int >= 0 && int <= stars.count else { return }
        for x in stars.indices {
            stars[x] = false
        }
        for x in 0...int - 1 {
            stars[x] = true
        }
    }
}
