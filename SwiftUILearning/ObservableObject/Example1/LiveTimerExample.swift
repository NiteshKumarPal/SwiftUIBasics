//
//  LiveTimerExample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 19/06/20.
//

import SwiftUI

struct LiveTimerExample: View {
    
   @ObservedObject var dateTimeModel = DateTimeModel()
    
    var body: some View {
        Text(dateTimeModel.displayTime)
            .font(Font.system(size: 25))
            .foregroundColor(Color.blue)
    }
}

struct LiveTimerExample_Previews: PreviewProvider {
    static var previews: some View {
        LiveTimerExample()
    }
}
