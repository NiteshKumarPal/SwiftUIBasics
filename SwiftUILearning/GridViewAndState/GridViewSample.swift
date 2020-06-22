//
//  GridViewSample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//

import SwiftUI

struct GridViewSample: View {
    
    var properties: [Property] = Property.getAllProperties
    
    private var columnCount = 3 // change the value to 1,2,3 or 4 to see the respective impact
    
    var body: some View {
        getPropertyGrid()
    }
    
    func getPropertyGrid() -> some View {
        
        let grilledProperty: [[Property]] = properties.grid(columSize: columnCount)
        
        
        return List {
            ForEach(0..<grilledProperty.count) { propertyRawIndex in
                HStack {
                    ForEach(0..<grilledProperty[propertyRawIndex].count) {
                        
                        propertyColumnIndex in
                        
                        Image.init(grilledProperty[propertyRawIndex][propertyColumnIndex].image)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct GridViewSample_Previews: PreviewProvider {
    static var previews: some View {
        GridViewSample()
    }
}
