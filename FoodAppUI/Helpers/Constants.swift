//
//  Constants.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import Foundation
import SwiftUI

enum K {
    enum Colors {
        static let colors: [Color] = [
            Color.black,
            Color.blue,
            Color.gray,
            Color.green,
            Color.orange,
            Color.pink,
            Color.purple,
            Color.red,
            Color.yellow
        ]
    }
    enum RestaurantViewWise {
        static let foodKinds: [String] = [
            "Mercado",
            "Vale-refeição",
            "Lanches",
            "Japonesa",
            "Pizza",
            "Promoções",
            "Vegetariana",
            "Brasileira",
            "Bebidas",
            "Açaí",
            "Doces & Bolos",
            "Árabe",
            "Italiana",
            "Chinesa",
            "Gourmet"
        ]
    }
    enum Profile {
        static let getProfileOptions: [ProfileOptions] = [
            ProfileOptions(image: Image(systemName: "ellipsis.bubble.fill"), optionTitle: "Chats", optionDescription: "Minhas conversas"),
            ProfileOptions(image: Image(systemName: "bell"), optionTitle: "Notificações", optionDescription: "Minha central de notificações"),
            ProfileOptions(image: Image(systemName: "creditcard"), optionTitle: "Pagamentos", optionDescription: "Meus saldos e cartões"),
            ProfileOptions(image: Image(systemName: "ticket"), optionTitle: "Clube do App", optionDescription: "Meus pacotes de desconto"),
            ProfileOptions(image: Image(systemName: "ticket.fill"), optionTitle: "Cupons", optionDescription: "Meus cupons de desconto"),
            ProfileOptions(image: Image(systemName: "star.square"), optionTitle: "Fidelidade", optionDescription: "Minhas fidelidades"),
            ProfileOptions(image: Image(systemName: "heart.circle"), optionTitle: "Favoritos", optionDescription: "Meus restaurantes favoritos"),
            ProfileOptions(image: Image(systemName: "bolt.heart.fill"), optionTitle: "Feed", optionDescription: "Acompanhe seus restaurantes favoritos"),
            ProfileOptions(image: Image(systemName: "location.viewfinder"), optionTitle: "Endereços", optionDescription: "Meus endereços de entrega"),
            ProfileOptions(image: Image(systemName: "list.bullet.rectangle.portrait"), optionTitle: "Meus dados", optionDescription: "Minhas informações de conta"),
            ProfileOptions(image: Image(systemName: "figure.stand.line.dotted.figure.stand"), optionTitle: "Doações", optionDescription: "Minhas doações")
        ]
        static let getProfileSettings: [ProfileSettings] = [
            ProfileSettings(image: Image(systemName: "questionmark.circle"), settingTitle: "Ajuda"),
            ProfileSettings(image: Image(systemName: "gearshape"), settingTitle: "Configurações"),
            ProfileSettings(image: Image(systemName: "shield.righthalf.filled"), settingTitle: "Segurança"),
            ProfileSettings(image: Image(systemName: "qrcode.viewfinder"), settingTitle: "Usar no carro"),
            ProfileSettings(image: Image(systemName: "figure.wave"), settingTitle: "Sugerir restaurantes")
        ]
    }
}
