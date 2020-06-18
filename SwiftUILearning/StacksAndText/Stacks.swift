//
//  Stacks.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(Font.headline) // <- modifiers returns modified version of View instance (new object created in memory)
                .foregroundColor(Color.green) // <- modifiers
            
            
            Text("Good Morning!")
                .foregroundColor(Color.red)
                .font(Font.headline)
            
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Good Morning!")
            }
            
            ZStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("---------------")
            }
        }
    }
}

// to preview use Option-Cmd-p
struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
