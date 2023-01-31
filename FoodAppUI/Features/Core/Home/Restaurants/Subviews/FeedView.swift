//
//  FeedView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct FeedView: View {

    var body: some View {
        VStack {
            HStack {
                Text("Feed")
                    .bold()
                    .font(.system(size: 20))
                    .padding(.leading)
                Spacer()
                Button.init {
                    print("button tapped")
                } label: {
                    Text("Ver mais")
                        .foregroundColor(.red)
                        .font(.system(size: 16))
                        .padding(.trailing)
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach((1...10), id: \.self) { element in
                        Button {
                            print("button tapped")
                        } label: {
                            VStack {
                                HStack {
                                    Text("Restaurant name")
                                        .font(.system(size: 16))
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                                HStack {
                                    let color = K.Colors.colors.randomElement() ?? Color.red
                                    Text("")
                                        .frame(width: 100, height: 80)
                                        .background(color)
                                        .cornerRadius(8)
                                    Text("")
                                        .frame(width: 100, height: 80)
                                        .background(color)
                                        .cornerRadius(8)
                                }.padding(.trailing)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }

}
