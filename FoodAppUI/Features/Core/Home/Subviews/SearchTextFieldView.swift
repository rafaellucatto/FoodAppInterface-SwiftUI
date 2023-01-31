//
//  SearchTextFieldView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct SearchTextFieldView: View {

    @Binding var searchText: String

    var filterText: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .renderingMode(.original)
                .frame(width: 15, height: 15, alignment: .center)
                .padding(.leading)
            TextField("idk", text: $searchText, prompt: Text(filterText))
                .padding()
        }
        .background(Color.gray.opacity(0.2).cornerRadius(10))
        .padding()
    }
}
