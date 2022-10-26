//
//  GiftsListView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 25/10/22.
//

import SwiftUI

struct IdeasOccasionListView: View {
    
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

struct GiftsListView_Previews: PreviewProvider {
    static var previews: some View {
        IdeasOccasionListView(occasion: Occasion(name: "OccasionPreview"))
    }
}
