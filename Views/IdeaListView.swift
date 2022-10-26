//
//  IdeaListView.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
//

import SwiftUI

struct IdeaListView: View {
    var idea: any Idea
    var body: some View {
        ScrollView {
            
        }
        .navigationTitle(idea.name)
    }
}

struct IdeaListView_Previews: PreviewProvider {
    static var previews: some View {
        IdeaListView(idea: Gift(name: "PreviewGift", description: "PreviewDescription", counter: 0, icon: "", color: .red))
    }
}
