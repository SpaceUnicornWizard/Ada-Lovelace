//
//  Gift.swift
//  Ideally
//
//  Created by Pietro Ciuci on 24/10/22.
//

import Foundation
import SwiftUI

struct Gift: Idea, Identifiable {
    var name: String
    var description: String
    var counter: Int
    var icon: String
    var color: Color
    var id = UUID()
}

