//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//

import SwiftUI

//In the World of SwiftUI, there is no UIViewController, UIView or any UIKit components.
//Here we use term View instead of UIView
//In SwiftUI you can create custom view just be confirming View protocol. like in below Hello world example.
//Only struct type should confirm View protocol.

struct ContentView: View {
    var body: some View { // Here "some View" is used which is opaque return type to hide its complex structure of View Hierachy.
        Text("Hello, World!")
        /*
         just do Cmd+click on Text or HStack or VStack or any wrapper component, it will show you list of different options. Just try out some very useful options like:
         - To jump on definition ( Control + cmd + click )
         - To see code documentation ( Option + click )
         - To see [SwiftUI inspector] ( Control + cmd )
                - By this shortkey option you can change modifier for selected View like font, padding, frame etc. without writing code yourself, system will write it for you.
         - Try option for [Embed in HStack], [Embed in VStack] and [Embed in List]
         - Try option for [Make Condition], it will Embed in VStack with if else statement
         - Try option for [Repeat], it will embed your code inside ForEach(0..<5) View
         - Try option for Extract to method, it will extract your code in extractedFunc() method and will be replaced at its place.
         */
    }
}

//ContentView_Previews default name created by xcode for you, you can change its name later.
//PreviewProvider protocol gives the capability to preview you View
//To preview use Option-Cmd-p
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
