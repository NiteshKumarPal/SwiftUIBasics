//
//  PublishPropertyBindingToOtherView.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 19/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import SwiftUI

struct PublishPropertyBindingToOtherView: View {
    @ObservedObject var feedback = Feedback()
    
    var body: some View {
        VStack {
            //👇 for just accessing its as read only dont use it with $ prefix
            ShowFeedback(feedbackMessage: $feedback.feedbackMessage)
            
            //👇 use $ prefix for binding it with text parameter that is actually Binding<String> type, so now any changes of feedbackMessage would reflect in text value of TextField and vice versa.
            TextField("Enter feedback", text: $feedback.feedbackMessage).padding(20).font(Font.largeTitle)
        }
        
    }
}

struct ShowFeedback: View {
    
    // Just simple local state property any instance property can be bound to the property of other View, but condition it has to attributed as @Published
    @Binding var feedbackMessage: String
    
    var body: some View {
        Text(feedbackMessage.isEmpty ? "No Feedback yet" : feedbackMessage).foregroundColor(Color.blue)
    }
}

struct PublishPropertyBindingToOtherView_Previews: PreviewProvider {
    static var previews: some View {
        PublishPropertyBindingToOtherView()
    }
}
