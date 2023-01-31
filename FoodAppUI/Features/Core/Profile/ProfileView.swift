//
//  ProfileView.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .foregroundColor(.purple)
                        .frame(width: 40, height: 40)
                        .padding(.leading, 15)
                    Text("User's name")
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                .background(Color.white)
                List {
                    NavigationLink {
                        Text("Convide seus amigos")
                    } label: {
                        HStack {
                            Image(systemName: "person.3.fill")
                                .frame(width: 50, height: 50, alignment: .center)
                                .foregroundColor(.red)
                            VStack {
                                Text("Convide seus amigos")
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Ganhe R$10 indicando este app!")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .padding()
                    .frame(height: 80)
                    .background(Color.white)
                    .clipped()
                    .shadow(color: Color.myGray, radius: 4)
                    ForEach(K.Profile.getProfileOptions) { element in
                        ProfileOptionsView(profileOptions: element)
                    }
                    ForEach(K.Profile.getProfileSettings) { element in
                        if element.id == K.Profile.getProfileSettings[0].id {
                            ProfileSettingButtonView(profileSettings: element)
                                .padding(.top)
                        } else {
                            ProfileSettingButtonView(profileSettings: element)
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            print("qrcode tapped")
                        } label: {
                            Image(systemName: "qrcode.viewfinder")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
