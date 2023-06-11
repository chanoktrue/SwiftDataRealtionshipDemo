//
//  AppIdea.swift
//  SwiftDataDemo
//
//  Created by Thongchai Subsaidee on 11/6/23.
//

import SwiftUI
import SwiftData

@Model
class AppIdea {
    @Attribute(.unique) var name: String
    var detailDescription: String
    var creationDate: Date
    
    init(name: String, detailDescription: String) {
        self.name = name
        self.detailDescription = detailDescription
        self.creationDate = .now
    }
    
    @Relationship(.cascade)
    var features: [AppFeature] = []
}
