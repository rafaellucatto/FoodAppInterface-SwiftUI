//
//  FoodKindsView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct FoodKindsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(K.RestaurantViewWise.foodKinds, id: \.self) { element in
                    Button {
                        print("button tapped")
                    } label: {
                        VStack {
                            Image(systemName: "scribble")
                                .resizable()
                                .frame(width: 100, height: 70, alignment: .center)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color.yellow)
                                .background(Color.red)
                                .cornerRadius(10)
                            Text(element)
                                .foregroundColor(.black)
                                .font(.system(size: 14))
                        }
                    }
                }
            }
            .padding()
        }
    }
}
