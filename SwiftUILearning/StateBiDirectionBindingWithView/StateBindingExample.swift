//
//  StateBindingExample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import SwiftUI

struct StateBindingExample: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            
            Text("Hello! \(message)")
                .foregroundColor(Color.green)
                .lineLimit(10)
            
            TextField("Enter your message.", text: $message).padding(20) // This is two way binding, It means the value of textfield at run time will modify the value of userName
            
        }
    }
}

// cmd + option + p
struct StateBindingExample_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingExample()
    }
}
