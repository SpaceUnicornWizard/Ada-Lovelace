//
//  IdeaCard.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
//

import SwiftUI

struct IdeaCard: View {
    var idea: any Idea
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
        //.background(Color(red: 242/255, green: 242/255, blue: 247/255)) //#f2f2f7
        .background(.white)
        .cornerRadius(15)
        .frame(width: 150, height: 100)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaCard(idea:
                    Gift(name: "PreviewCategory", description: "PreviewDescription", counter: 0, icon: "", color: .red))
    }
}
