//
//  UserData.swift
//  Landmarks
//
//  Created by Nguyen Duong on 3/3/20.
//  Copyright © 2020 Nguyen Duong. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
 
}
