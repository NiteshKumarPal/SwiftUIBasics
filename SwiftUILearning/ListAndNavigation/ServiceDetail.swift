//
//  ServiceDetail.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//

import SwiftUI

struct ServiceDetail: View {
    
    var service: SocietyService
    @State private var isZoom: Bool = false
    
    var body: some View {
       detailWithZoomAnimation()
        .navigationBarTitle(Text(service.serviceName), displayMode: .inline) //check the differences for .inline, .automatic and .large
    }
    
    // 1st trial
    func simpleDetail() -> some View {
        VStack {
            Image(service.image)
                .resizable()
                .scaledToFit()
            HStack {
                Text(service.serviceName)
                Text(service.phoneNumber).foregroundColor(Color.blue)
            }
        }
    }
    
    // 2nd trial
    func detailWithZoom() -> some View {
        VStack {
            Image(service.image)
                .resizable()
                .aspectRatio(contentMode:
                    isZoom ? ContentMode.fill : ContentMode.fit)
                .onTapGesture {
                    self.isZoom.toggle()
            }
            HStack {
                Text(service.serviceName)
                Text(service.phoneNumber).foregroundColor(Color.blue)
            }
        }
    }
    
    // 3rd trial
    func detailWithZoomAnimation() -> some View {
        VStack {
            Image(service.image)
                .resizable()
                .aspectRatio(contentMode:
                    isZoom ? ContentMode.fill : ContentMode.fit)
                .onTapGesture {
                    withAnimation {
                        self.isZoom.toggle()
                    }
            }
            HStack {
                Text(service.serviceName)
                Text(service.phoneNumber).foregroundColor(Color.blue)
            }
        }
    }
}

struct ServiceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDetail(service: SocietyService(serviceName: "Plumber", image: "plumber", phoneNumber: "90873832"))
    }
}
