//
//  EditAppIdeaView.swift
//  SwiftDataDemo
//
//  Created by Thongchai Subsaidee on 11/6/23.
//

import SwiftUI

struct EditAppIdeaView: View {
    @Bindable var idea: AppIdea
    @State private var newFeatureDescription = ""
    var body: some View {
        Form {
            TextField("Name", text: $idea.name)
            
            TextField("Description", text: $idea.detailDescription, axis: .vertical)
            
            Section("Features") {
                TextField("New Feature", text: $newFeatureDescription)
                    .onSubmit {
                        let feature = AppFeature(detailedDescription: newFeatureDescription)
                        idea.features.append(feature)
                        newFeatureDescription.removeAll()
                    }
                ForEach(idea.features) { feature in
                    Text(feature.detailedDescription)
                }
            }
        }
        .navigationTitle(idea.name)
    }
}

