//
//  ContentView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 22/10/22.
//

import SwiftUI


private var occasions = [
    Occasion(name: "Christmas"),
    Occasion(name: "Birthdays"),
    Occasion(name: "Anniversaries"),
    Occasion(name: "Graduations"),
    Occasion(name: "Weddings")
]

struct ContentView: View {
    
    
    private var ideas: [any Idea] = [
        Gift(name: "Gifts", description: "", counter: 0, icon: "gift.fill", color: .red),
        Event(name: "Events", description: "", counter: 0, icon: "ticket.fill", color: .purple),
        Postcard(name: "Postcards", description: "", counter: 0, icon: "mail.fill", color: .blue)
    ]
    
    var body: some View {
        NavigationView {
                Form {
                    Section {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 145), spacing: 20)], spacing: 0) {
                            ForEach(ideas, id: \.id) { idea in
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
                        HStack {
                            Text("Occasions")
                            Spacer()
                            Button(action: {
                                // create new occasion
                            }) {
                                Image(systemName: "plus")
                            }
                        }
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
