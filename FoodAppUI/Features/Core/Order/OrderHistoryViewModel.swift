//
//  OrderHistoryViewModel.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

class OrderHistoryViewModel: ObservableObject {
    @Published var orderHistorySample: [OrderHistoryModel] = [
        // hardcoded examples but you should make an API call instead
        OrderHistoryModel(date: "Ter. 07 dezembro 2021",
                          restaurantImageUrl: "A",
                          restaurantName: "Restaurante A",
                          lastOrder: ["Aquele prato", "Aquela bebida"],
                          appRate: Int.random(in: 1...5)),
        OrderHistoryModel(date: "Qua. 01 dezembro 2021",
                          restaurantImageUrl: "B",
                          restaurantName: "Restaurante B",
                          lastOrder: ["Aquele prato", "Aquela bebida"],
                          appRate: Int.random(in: 1...5)),
        OrderHistoryModel(date: "Sáb. 20 novembro 2021",
                          restaurantImageUrl: "C",
                          restaurantName: "Restaurante C",
                          lastOrder: ["Aquele prato", "Aquela bebida"],
                          appRate: Int.random(in: 1...5)),
        OrderHistoryModel(date: "Sex. 03 setembro 2021",
                          restaurantImageUrl: "D",
                          restaurantName: "Restaurante D",
                          lastOrder: ["Aquele prato", "Aquela bebida"],
                          appRate: Int.random(in: 1...5)),
        OrderHistoryModel(date: "Qua. 01 setembro 2021",
                          restaurantImageUrl: "E",
                          restaurantName: "Restaurante E",
                          lastOrder: ["Aquele prato", "Aquela bebida"],
                          appRate: Int.random(in: 1...5))
    ]
}
