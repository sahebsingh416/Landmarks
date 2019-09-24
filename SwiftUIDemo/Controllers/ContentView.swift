//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Saheb Singh Tuteja on 24/09/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var landmark:Landmark
    
    var body: some View {
        VStack{
            MapView(landmark: landmark).frame(height: 300).edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image).offset(y: -280).padding(.bottom, -280)
            VStack(alignment: .leading){
                Text(landmark.name)
                .font(.title)
                HStack{
                    Text(landmark.park)
                    .font(.subheadline )
                    Spacer()
                    Text(landmark.state)
                    .font(.subheadline )
                }
            }.padding()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark : landmarkData[0])
    }
}
#endif
