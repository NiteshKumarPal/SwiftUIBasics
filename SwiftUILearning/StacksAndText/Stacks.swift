//
//  Stacks.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
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
    
    func vstackLimitCheck() -> some View { // -> Always use return type as some View to take the advantage of Opaque return type
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!")
            Text("Hello, World!")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!")
            Text("Hello, World!")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // 👇 if you dare to uncomment it, it will show you Error: Extra Argument in call, It means you cannot add more than 10 View inside VStack, HStack or ZStack.
            // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // What if you want to add more Views after 10 🤔
            // Answer 👇
            // Enbed All above 10 Views in Group {}, and if you want to add 11the View use another Group {} and put this or more Views inside it.
        }
    }
}

// to preview use Option-Cmd-p
struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
