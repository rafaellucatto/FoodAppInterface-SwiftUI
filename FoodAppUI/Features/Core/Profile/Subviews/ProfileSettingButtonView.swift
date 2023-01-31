//
//  ProfileSettingButtonView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct ProfileSettingButtonView: View {

    var profileSettings: ProfileSettings

    var body: some View {
        NavigationLink {
            Text(profileSettings.settingTitle)
        } label: {
            HStack {
                profileSettings.image
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(Color.gray)
                Text(profileSettings.settingTitle)
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }

}
