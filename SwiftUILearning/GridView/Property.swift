//
//  Property.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import Foundation

struct Property {
    var area = ""
    var image = ""
}

extension Property {
  static  var getAllProperties: [Property] {
        return [Property(area: "Area 12A", image: "1"),
        Property(area: "Area 13A", image: "2"),
        Property(area: "Area 14A", image: "3"),
        Property(area: "Area 15A", image: "4"),
        Property(area: "Area 16B", image: "5"),
        Property(area: "Area 17B", image: "6"),
        Property(area: "Area 18B", image: "7"),
        Property(area: "Area 19B", image: "8")]
    }
}

extension Array {
    func grid(columSize: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: columSize).map {index in
            Array(self[index..<Swift.min(index + columSize, count)])
        }
    }
}
