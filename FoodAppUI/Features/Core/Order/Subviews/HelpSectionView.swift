//
//  HelpSectionView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct HelpSectionView: View {

    var body: some View {
        Divider()
            .padding([.leading, .trailing])
        HStack {
            NavigationLink {
                Text("Help View here")
            } label: {
                Text("Ajuda")
                    .foregroundColor(.red)
            }
            Spacer()
            Button {
                print("button tapped")
            } label: {
                Text("Adicionar à sacola")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }

}
