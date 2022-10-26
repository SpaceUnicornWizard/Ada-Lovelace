//
//  IdeaCardView.swift
//  Ideally
//
//  Created by OC on 2022-10-25.
//

import SwiftUI

struct IdeaCardView: View {
    var body: some View {
        VStack {
            Image("Gibson")
                .resizable()
                .aspectRatio(contentMode: .fit)
         
            HStack {
                VStack(alignment: .leading) {
                    Text("category")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("heading")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("author".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
         
                Spacer()
            }
            .padding()
        }
    }
}

struct IdeaCardView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaCardView()
    }
}
