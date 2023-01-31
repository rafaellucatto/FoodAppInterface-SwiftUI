//
//  LastOrderCardView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct LastOrderCardView: View {

    var body: some View {
        ZStack {
            VStack {
                Text("Peça de novo")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
                HStack {
                    Text("1")
                        .padding(3)
                        .background(Color.myGray)
                        .padding(.leading)
                    Text("PIZZA GRANDE (PORTUGUESA)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Button(action: {
                    print("button tapped")
                }, label: {
                    Text("Adicionar à sacola")
                        .bold()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 45, alignment: .center)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .padding()
                })
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.25, alignment: .center)
            Image(systemName: "photo.circle")
                .resizable()
                .frame(width: 50, height: 50, alignment: .topTrailing)
                .offset(x: UIScreen.main.bounds.width * 0.3,
                        y: UIScreen.main.bounds.height * -0.07)
        }
        .background(Color.white)
        .cornerRadius(4)
        .clipped()
        .shadow(color: Color.gray, radius: 3)
    }

}
