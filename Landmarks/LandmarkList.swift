//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nguyen Duong on 3/1/20.
//  Copyright © 2020 Nguyen Duong. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = true
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //        ForEach(["iPhone SE", "iPhone 11 Pro Max","iPhone 8"], id: \.self) { deviceName in
        //            LandmarkList()
        //                .previewDevice(PreviewDevice(rawValue: deviceName))
        //                .previewDisplayName(deviceName)
        //        }
        LandmarkList()
            .environmentObject(UserData())
    }
}
