//
//  RestaurantsOrderedTheMostByTheUserView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct RestaurantsOrderedTheMostByTheUserView: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(1...15, id: \.self) { element in
                    NavigationLink {
                        Text("Restaurant " + element.description)
                    } label: {
                        VStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundColor(K.Colors.colors.randomElement() ?? Color.red)
                            Text("Restaurant " + element.description)
                                .font(.system(size: 16))
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.all, 4)
                .padding([.top, .bottom])
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.displayP3, red: 0.9, green: 0.9, blue: 0.9, opacity: 0.9), lineWidth: 1))
            }
            .padding(5)
        }
    }

}
