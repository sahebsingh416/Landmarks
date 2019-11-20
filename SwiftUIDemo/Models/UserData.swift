//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by Saheb Singh Tuteja on 25/09/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserData : ObservableObject{
    @Published var showOnlyFavorites = false
    @Published var landmark = landmarkData
}
