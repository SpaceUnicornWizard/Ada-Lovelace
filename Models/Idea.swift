//
//  Idea.swift
//  Ideally
//
//  Created by Pietro Ciuci on 22/10/22.
//

import Foundation
import SwiftUI

protocol Idea: Identifiable {
    var name: String { get set }
    var description: String { get set }
    var counter: Int { get set }
    var icon: String { get set }
    var color: Color { get set }
    var id: UUID { get }
}

