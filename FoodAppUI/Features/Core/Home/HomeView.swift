//
//  HomeView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct HomeView: View {

    @State private var showingAddresses: Bool = false

    var body: some View {
        NavigationView {
            RestaurantsView()
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    VStack {
                        VStack {
                            Button {
                                showingAddresses.toggle()
                            } label: {
                                Text("My current address goes here")
                                    .bold()
                                Image(systemName: "arrowtriangle.down.circle")
                            }
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .sheet(isPresented: $showingAddresses) {
                                showingAddresses = false
                            } content: {
                                AddressesView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Início")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
