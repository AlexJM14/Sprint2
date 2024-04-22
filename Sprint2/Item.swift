//
//  Item.swift
//  Sprint2
//
//  Created by Alex Jumbo on 22/4/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
