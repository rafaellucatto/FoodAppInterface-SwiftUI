//
//  OrderView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("MEUS PEDIDOS")
                ScrollView {
                    ZStack {
                        Text("")
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.2)
                            .background(Color.myGray2)
                            .offset(x: 0, y: UIScreen.main.bounds.height * -0.1)
                        LastOrderCardView()
                            .padding()
                    }
                    Text("Mais pedidos por você")
                        .bold()
                        .padding()
                        .frame(width: UIScreen.main.bounds.width, height: 22, alignment: .leading)
                    RestaurantsOrderedTheMostByTheUserView()
                    Text("Histórico")
                        .bold()
                        .padding()
                        .frame(width: UIScreen.main.bounds.width, height: 22, alignment: .leading)
                    OrderHistoryView(cardSize: UIScreen.main.bounds.height * 0.4)
                    HStack {
                        Text("")
                            .frame(width: UIScreen.main.bounds.width, height: 20)
                    }
                }
            }
            .navigationBarTitle("MEUS PEDIDOS")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
