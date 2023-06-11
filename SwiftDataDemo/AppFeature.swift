//
//  AppFeature.swift
//  SwiftDataDemo
//
//  Created by Thongchai Subsaidee on 11/6/23.
//

import SwiftUI
import SwiftData

@Model
class AppFeature {
    @Attribute(.unique) var detailedDescription: String
    var creationDate: Date
    
    init(detailedDescription: String) {
        self.detailedDescription = detailedDescription
        self.creationDate = .now
    }
}

