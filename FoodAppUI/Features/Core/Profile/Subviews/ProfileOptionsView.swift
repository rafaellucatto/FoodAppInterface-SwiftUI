//
//  ProfileOptionsView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct ProfileOptionsView: View {

    var profileOptions: ProfileOptions

    var body: some View {
        NavigationLink {
            Text(profileOptions.optionTitle)
        } label: {
            HStack {
                profileOptions.image
                    .frame(width: 50, height: 50, alignment: .center)
                VStack {
                    Text(profileOptions.optionTitle)
                        .bold()
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(profileOptions.optionDescription)
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }

}
