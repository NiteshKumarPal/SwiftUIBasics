//
//  StateBindingExample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 18/06/20.
//

import SwiftUI

struct StatePassBindingExample: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            
            ShowMessage(message: $message)
            
            TextField("Enter your message.", text: $message).padding(20) // This is two way binding, It means the value of textfield at run time will modify the value of userName
            
        }
    }
}

struct ShowMessage: View {
    
    // 1. Dont make this property as private, otherwise it cannot be bound with its original property
    // 2. It will require to add type annotation eg. String, without any initiazation
    // 3. Best practice to name the property exact the same name which is being bound to it to avoid any confusions.
    @Binding var message: String
    
    var body: some View {
        Text("Hello! \(message)")
        .foregroundColor(Color.green)
        .lineLimit(10)
    }
}

// cmd + option + p
struct StatePassBindingExample_Previews: PreviewProvider {
    static var previews: some View {
        StatePassBindingExample()
    }
}

