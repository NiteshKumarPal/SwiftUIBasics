//
//  Property.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//

import Foundation

struct Property: Identifiable {
    var id: Int = -1
    
    
    var area = ""
    var image = ""
}

extension Property {
  static  var getAllProperties: [Property] {
    return [Property(id: 0, area: "Area 12A", image: "1"),
        Property(id: 1,area: "Area 13A", image: "2"),
        Property(id: 2,area: "Area 14A", image: "3"),
        Property(id: 3,area: "Area 15A", image: "4"),
        Property(id: 4,area: "Area 16B", image: "5"),
        Property(id: 5,area: "Area 17B", image: "6"),
        Property(id: 6,area: "Area 18B", image: "7"),
        Property(id: 7,area: "Area 19B", image: "8")]
    }
}

extension Array {
    func grid(columSize: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: columSize).map {
            Array(self[$0..<Swift.min($0 + columSize, count)])
        }
    }
}
