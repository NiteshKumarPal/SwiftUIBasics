//
//  GridViewWithState.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import SwiftUI

struct GridViewWithState: View {
    
    var properties: [Property] = Property.getAllProperties
    
    @State private var columnCount = 2
    let maxColumnSize = 4
    
    var body: some View {
        VStack {
            getStateChangeButton()
            getPropertyGrid(columnCount: columnCount)
        }
    }
    
    func getStateChangeButton() -> some View {
        Button(action: changeColumnCount) {
            Text("Change Grid Style")
        }
    }
    
    func changeColumnCount() {
        var count = columnCount
        count += 1
        count = (count % (maxColumnSize + 1)) == 0 ? 1 : count // assume maxColumnSize = 3, if count reaches to 4 lets just reset to 1
        columnCount = count
        print(columnCount)
    }
    
    func getPropertyGrid(columnCount: Int) -> some View {
        
        let grilledProperty: [[Property]] = properties.grid(columSize: columnCount)
        let listCount = grilledProperty.count
        
        return List {
            ForEach(0..<listCount, id: \.self) { propertyRawIndex in  // <- whenever using nested ForEach first must have id
                HStack {
                    ForEach(grilledProperty[propertyRawIndex]) { propertyColumnIndex in // here since Property confirms Identifiable, we directly use property array here
                        Image.init(propertyColumnIndex.image)
                            .resizable()
                            .scaledToFit()
                        
                    }
                }
            }
        }
    }
}

struct GridViewWithState_Previews: PreviewProvider {
    static var previews: some View {
        GridViewWithState()
    }
}
