//
//  AddressesView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import Foundation
import SwiftUI

struct AddressesView: View {

    @Environment(\.presentationMode) var presentationMode
    @State var searchText: String = ""

    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrowshape.turn.up.backward.circle")
                            .frame(width: 60, height: 60, alignment: .center)
                    }
                    .padding(.leading)
                    Spacer()
                }
                HStack {
                    Text("ENDEREÇO DE ENTREGA")
                        .font(.system(size: 18))
                        .frame(alignment: .center)
                }
            }
            SearchTextFieldView(searchText: $searchText, filterText: "Buscar endereço e número")
            LocalesView(placeName: "Usar minha localização", isChosen: false, imageName: "location.circle")
            List {
                LocalesView(placeName: "Endereço 1", isChosen: true, imageName: "house")
                LocalesView(placeName: "Endereço 2", isChosen: false, imageName: "house")
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width)
    }

}

struct AddressesView_Previews: PreviewProvider {
    static var previews: some View {
        AddressesView()
    }
}

