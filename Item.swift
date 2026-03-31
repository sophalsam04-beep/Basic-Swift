//
//  Item.swift
//  Y3_SM2
//
//  Created by MacBook Pro on 3/30/26.
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
