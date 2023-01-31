//
//  LocalesView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct LocalesView: View {
    var placeName: String
    var isChosen: Bool
    var imageName: String
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: imageName)
                    .padding(.leading)
                Spacer()
            }
            VStack {
                Text(placeName)
                    .bold()
                Text("Rua ABCXYZ, 123")
                Text("Bairro W")
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width*0.8, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(uiColor: isChosen ? .red : .secondaryLabel), lineWidth: 2))
        .padding(10)
    }
}
