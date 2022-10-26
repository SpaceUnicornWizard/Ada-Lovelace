//
//  Idea.swift
//  IdeallyProject
//
//  Created by OC on 2022-10-26.
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
