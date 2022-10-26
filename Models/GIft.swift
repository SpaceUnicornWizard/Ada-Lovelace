//
//  GIft.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
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
