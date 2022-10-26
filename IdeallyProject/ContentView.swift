//
//  ContentView.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var occasions = [
        Occasion(name: "Christmas"),
        Occasion(name: "Birthdays"),
        Occasion(name: "Anniversaries"),
        Occasion(name: "Graduations"),
        Occasion(name: "Weddings")
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 242/255, green: 242/255, blue: 247/255).edgesIgnoringSafeArea(.all)
                VStack {
                    IdeaCardsListView()
                    VStack {
                        HStack {
                            Text("Occasions")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Spacer()
                            Button(action: { print("Hello World")}) {
                                Image(systemName: "plus")
                            }
                        }
                        .padding(.horizontal)
                        List(occasions) { occasion in
                            NavigationLink {
                                IdeaOccasionsListView(occasion: occasion)
                            } label: {
                                Text(occasion.name)
                            }
                        }
                    }
                    Spacer()
                        .navigationTitle("Your Collection")
                }
                .padding(.horizontal)
            }
        }
    }
}

    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

