//
//  IdeaCardsView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 22/10/22.
//

import SwiftUI

struct IdeaCardsListView: View {
    
    var ideas: [any Idea] = [
        Gift(name: "Gifts", description: "", counter: 0, icon: "gift.fill", color: .red),
        Event(name: "Events", description: "", counter: 0, icon: "ticket.fill", color: .purple),
        Postcard(name: "Postcards", description: "", counter: 0, icon: "mail.fill", color: .blue)
    ]
    

/*    var body: some View {
        VStack (alignment: .leading) {
            Text("Your Collection")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("Ideas")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(ideas, id: \.id) { idea in
                    CardView(idea: idea)
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
 */
    
    /*var body: some View {
        NavigationView {
            Form {
                Section {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 145), spacing: 20)], spacing: 0) {
                            ForEach(ideas, id: \.id) { idea in
                                //NavigationLink(destination: //IdeaListView(idea: idea)) {
                                    CardView(idea: idea)
                                //}
                        }
                    }
                } header: {
                    Text("Ideas")
                        .font(.title2)
                        .fontWeight(.semibold)
                }.headerProminence(.increased)
                Section {
                    List(occasions) { occasion in
                        NavigationLink {
                            IdeasOccasionListView(occasion: occasion)
                        } label: {
                            Text(occasion.name)
                        }
                    }
                } header: {
                    HStack {
                        Text("Occasions")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: { print("Hello World")}) {
                            Image(systemName: "plus")
                        }
                    }
                }
                .headerProminence(.increased)
            }
            .navigationTitle("Your Collection")
        }
    }*/
    
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

struct IdeaCardListView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaCardsListView()
    }
}
