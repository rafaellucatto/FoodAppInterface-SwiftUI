//
//  LastStoresView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct LastStoresView: View {

    let title: String

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .bold()
                    .font(.system(size: 20))
                    .padding(.leading)
                Spacer()
                Button {
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
                            VStack{
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(K.Colors.colors.randomElement() ?? Color.red)
                                Text("Restaurant name")
                                    .font(.system(size: 16))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}
