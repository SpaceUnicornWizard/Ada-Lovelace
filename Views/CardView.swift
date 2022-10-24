//
//  CardView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 22/10/22.
//

import SwiftUI

struct CardView: View {
    var idea: Idea
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: idea.icon) //logo
                    .foregroundColor(idea.color)
                    //.background(Color.red)//logo
                    //.clipShape(Circle())
                    .frame(width: 25, height: 25)
                Spacer()
                Text("\(idea.counter)") //counter
            }
            Text(idea.name) //category
        }
        .padding()
        .background(Color.secondary)
        .cornerRadius(15)
        .frame(width: 150, height: 100)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(idea: Idea(name: "PreviewCategory", description: "PreviewDescription", counter: 0, icon: "", color: .red))
    }
}
