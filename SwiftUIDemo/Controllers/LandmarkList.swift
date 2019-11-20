//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Saheb Singh Tuteja on 24/09/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData : UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.showOnlyFavorites) {
                    Text("Show Favorites Only")
                }
                ForEach(self.userData.landmark){ landmark in
                    if !self.userData.showOnlyFavorites || (self.userData.showOnlyFavorites && landmark.isFavorite){
                        NavigationLink(destination: ContentView(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }.navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().previewDevice(PreviewDevice(stringLiteral: "iPhone SE"))
    }
}
