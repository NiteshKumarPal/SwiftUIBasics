//
//  ObservaleObjectTwoWayExample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 19/06/20.
//

import SwiftUI

class Feedback: ObservableObject {
   @Published var feedbackMessage = ""
}

struct ObservaleObjectTwoWayExample: View {
    
    @ObservedObject var feedback = Feedback()
    
    var body: some View {
        VStack {
            //👇 for just accessing its as read only dont use it with $ prefix
            Text(feedback.feedbackMessage.isEmpty ? "No Feedback yet" : feedback.feedbackMessage).foregroundColor(Color.blue)
            
            //👇 use $ prefix for binding it with text parameter that is actually Binding<String> type, so now any changes of feedbackMessage would reflect in text value of TextField and vice versa.
            TextField("Enter feedback", text: $feedback.feedbackMessage).padding(20).font(Font.largeTitle)
        }
        
    }
}

struct ObservaleObjectTwoWayExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservaleObjectTwoWayExample()
    }
}
