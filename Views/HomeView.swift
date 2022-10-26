//
//  HomeView.swift
//  Ideally
//
//  Created by Pietro Ciuci on 26/10/22.
//

import SwiftUI

struct HomeView: View {
    
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
                                IdeasOccasionListView(occasion: occasion)
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
