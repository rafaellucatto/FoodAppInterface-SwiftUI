//
//  OrderHistoryView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct OrderHistoryView: View {

    var cardSize: CGFloat

    @ObservedObject var orderHistoryViewModel: OrderHistoryViewModel = .init()

    var body: some View {
        ForEach(orderHistoryViewModel.orderHistorySample) { element in
            Text(element.date)
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            VStack {
                NavigationLink {
                    Text(element.restaurantName.description)
                } label: {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30, alignment: .center)
                                .foregroundColor(K.Colors.colors.randomElement() ?? Color.red)
                            Text(element.restaurantImageUrl)
                        }
                        Text(element.restaurantName)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding()
                }
                .buttonStyle(PlainButtonStyle())
                Divider()
                    .padding([.leading, .trailing])
                
                    ForEach(element.lastOrder, id: \.self) { order in
                        HStack {
                        Text("1")
                            .padding(3)
                            .background(Color.myGray)
                            .padding(.leading)
                        Text(order.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                    
                }
                if orderHistoryViewModel.orderHistorySample[0].id == element.id {
                    Divider()
                        .padding([.leading, .trailing])
                    HStack {
                        Text("Avaliação")
                        Spacer()
                        StarRateView()
                    }
                    .padding([.leading, .trailing])
                }
                HelpSectionView()
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .center)
            .background(Color.white)
            .cornerRadius(5)
            .clipped()
            .shadow(color: .myGray, radius: 5)
        }
    }

}
