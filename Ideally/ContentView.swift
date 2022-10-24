//
//  ContentView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 22/10/22.
//

import SwiftUI

private var ideas = [
    Idea(name: "Gifts", description: "", counter: 0, icon: "gift.fill", color: .red),
    Idea(name: "Events", description: "", counter: 0, icon: "ticket.fill", color: .purple),
    Idea(name: "Postcards", description: "", counter: 0, icon: "mail.fill", color: .blue)
]

private var occasions = [
    Occasion(name: "Christmas"),
    Occasion(name: "Birthdays"),
    Occasion(name: "Anniversaries"),
    Occasion(name: "Graduations"),
    Occasion(name: "Weddings")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
                Form {
                    Section {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 145), spacing: 20)], spacing: 0) {
                            ForEach(ideas) { idea in
                                CardView(idea: idea)
                            }
                        }
                    } header: {
                        Text("Ideas")
                    }
                    .headerProminence(.increased)
                    Section {
                        List(occasions) { occasion in
                            /*@START_MENU_TOKEN@*/Text(occasion.name)/*@END_MENU_TOKEN@*/
                        }
                    } header: {
                        Text("Occasions")
                    }
                    .headerProminence(.increased)
                }
                .navigationTitle("Your Collection")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
