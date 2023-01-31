//
//  SearchView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct SearchView: View {

    @State var searchText: String = ""

    let data = (1...30).map { "Food Type \($0)" }
    let columns: [GridItem] = [
        GridItem(GridItem.Size.adaptive(minimum: 100, maximum: 150), spacing: 20, alignment: .center)
    ]
    var body: some View {
        ZStack {
            Color(uiColor: UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 0.05))
                .edgesIgnoringSafeArea(.all)
            VStack {
                SearchTextFieldView(searchText: $searchText, filterText: "Filtrar tipo de comida")
                ScrollView(showsIndicators: true) {
                    LazyVGrid(columns: columns) {
                        if searchText == "" {
                            ForEach(data, id: \.self) { item in
                                Text(item.description)
                                    .frame(width: 130, height: 100, alignment: .center)
                                    .background(Color(uiColor: .red))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .padding()
                            }
                        } else {
                            ForEach(data, id: \.self) { item in
                                if item.description.contains(searchText) {
                                    Text(item.description)
                                        .frame(width: 130, height: 100, alignment: .center)
                                        .background(Color(uiColor: .red))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .padding()
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
