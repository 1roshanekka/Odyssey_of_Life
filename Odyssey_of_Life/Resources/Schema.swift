//
//  Schema.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import Foundation
import SwiftData

@Model

class Diary {
    
    // unique entry based on "date"
    @Attribute(.unique) var date : Date
     
    var entry : String
    
    
    // initializer
    init(date: Date, entry: String) {
        self.date = date
        self.entry = entry
    }
}
