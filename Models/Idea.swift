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

/*class Ideas: Identifiable {
    
    init(name: String = "", description: String = "") {
        self.name = name
        self.description = description
    }
    
    var name: String = ""
    var description: String = ""
    
    
    
}

class Gifts: Ideas {
    
}

var gift: Gifts = Gifts(name: "", description: "")*/
