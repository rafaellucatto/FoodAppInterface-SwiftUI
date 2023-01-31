//
//  OrderHistoryModel.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import Foundation
import SwiftUI

struct OrderHistoryModel: Identifiable {
    var id: UUID = .init()
    var date: String
    var restaurantImageUrl: String
    var restaurantName: String
    var lastOrder: [String]
    var appRate: Int
}
