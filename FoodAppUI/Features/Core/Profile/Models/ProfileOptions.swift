//
//  ProfileOptions.swift
//  FoodApp
//
//  Created by Rafael Lucatto on 1/30/23.
//

import Foundation
import SwiftUI

struct ProfileOptions: Identifiable {
    var id: UUID = .init()
    var image: Image
    var optionTitle: String
    var optionDescription: String
}
