//
//  RestaurantsView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct RestaurantsView: View {
    var body: some View {
        ScrollView {
            VStack{
                FoodKindsView()
                SalesView()
                LastStoresView(title: "Últimas lojas")
                FeedView()
                LastStoresView(title: "Famosos")
            }
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView()
    }
}
