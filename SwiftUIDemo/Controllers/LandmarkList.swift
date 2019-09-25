//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Saheb Singh Tuteja on 24/09/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showOnlyFavorites = false
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showOnlyFavorites) {
                    Text("Show Favorites Only")
                }
                ForEach(landmarkData){ landmark in
                    if !self.showOnlyFavorites || (self.showOnlyFavorites && landmark.isFavorite){
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
