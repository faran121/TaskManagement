//
//  Item.swift
//  TaskManagement
//
//  Created by Maliks on 24/09/2023.
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
