//
//  DateTimeModel.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 19/06/20.
//

import Foundation
import Combine

class DateTimeModel: ObservableObject {  // <-- Which object needs to be observed, confirm ObservableObject protocol
   @Published var displayTime: String = "" // <-- Which property has to be bound with state to some component, mark it with @Published
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self](_) in
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.timeStyle = .medium
            print(formatter.string(from: Date()))
            
            self?.displayTime = formatter.string(from: Date())
        }
    }
}
