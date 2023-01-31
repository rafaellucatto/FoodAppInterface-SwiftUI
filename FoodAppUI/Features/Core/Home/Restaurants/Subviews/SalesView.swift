//
//  SalesView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct SalesView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach((1...10), id: \.self) { element in
                    Button {
                        print("button tapped")
                    } label: {
                        Text("Sale")
                            .frame(width: 200, height: 120)
                            .background(K.Colors.colors.randomElement() ?? Color.red)
                            .foregroundColor(Color(uiColor: .secondaryLabel))
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }

}
