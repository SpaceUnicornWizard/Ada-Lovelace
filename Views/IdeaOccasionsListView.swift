//
//  IdeaOccasionsListView.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
//

import SwiftUI

struct IdeaOccasionsListView: View {
    var occasion: Occasion
    
    var body: some View {
        /*NavigationView {
         VStack {
         Text("Hello World")
         }
         .navigationTitle(occasion.name)
         }*/
        VStack (alignment: .leading) {
            Text("Hello World")
                .font(.title2)
                .fontWeight(.semibold)
        }
        .navigationTitle(occasion.name)
    }
}

struct IdeaOccasionsListView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaOccasionsListView(occasion: Occasion(name: "OccasionPreview"))
    }
}
