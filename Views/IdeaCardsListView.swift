//
//  IdeaCardsListView.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
//

import SwiftUI

struct IdeaCardsListView: View {
    
    var ideas: [any Idea] = [
        Gift(name: "Gifts", description: "", counter: 0, icon: "gift.fill", color: .red),
        Event(name: "Events", description: "", counter: 0, icon: "ticket.fill", color: .purple),
        Postcard(name: "Postcards", description: "", counter: 0, icon: "mail.fill", color: .blue)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Ideas")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 145), spacing: 20)], spacing: 0) {
                ForEach(ideas, id: \.id) { idea in
                    NavigationLink(destination: IdeaListView(idea: idea)) {
                        IdeaCard(idea: idea)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct IdeaCardsListView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaCardsListView()
    }
}
