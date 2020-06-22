//
//  EnvironmentObjectExample.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 19/06/20.
//

import SwiftUI

class ProfileSetting: ObservableObject {
    @Published var isMute = false
    @Published var isOnline = false
}

struct RootConentOfApp: View {
    
    @EnvironmentObject var profileSetting: ProfileSetting
    
    var body: some View {
        // let profileSetting = ProfileSetting()
        
        // EnvironmentObject can be shared with any descedent child of the parent view which has main origin instance of the app
        // It can only be initialised with the help of environmentObject() method.
        // EnvironmentObjectExample is root view, It can be root view of app. you can define it in SceneDelegate class
        // profileSetting is the EnvironmentObject here
        // It can be access from RootConentOfApp, EnvironmentObjectExample and its child EnvironmentObjectExampleChild
        
         EnvironmentObjectExample()
    }
}

struct EnvironmentObjectExample: View {
    
    @EnvironmentObject var profileSetting: ProfileSetting
    
    var body: some View {
        VStack {
            
            // Even below line of enclosed in VStack can be taken out like EnvironmentObjectExampleChild and can access profileSetting instance, which would not impact anything in performance.
            VStack {
               Text("User Profile").font(Font.largeTitle)
               Text("User's Audio setting is \(getOnOffText(status: profileSetting.isMute))")
               Text("User's Online status is \(getOnOffText(status: profileSetting.isOnline))")
            }.padding(10).background(Color.green)
            
            
            EnvironmentObjectExampleChild()
        }
    }
    
    func getOnOffText(status: Bool) -> String {
        status ? "On" : "Off"
    }
}

struct EnvironmentObjectExampleChild: View {
    @EnvironmentObject var profileSetting: ProfileSetting
    
    var body: some View {
        
        VStack {
            
            Toggle.init("Audio seting: ", isOn: $profileSetting.isMute)
            Toggle.init("Online status: ", isOn: $profileSetting.isOnline)
        }.padding(10).background(Color.yellow)
    }
}

struct EnvironmentObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        RootConentOfApp().environmentObject(ProfileSetting())
    }
}
