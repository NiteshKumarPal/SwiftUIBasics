//
//  SocietyServices.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import SwiftUI

struct SocietyServicesListDemo: View {
    
    let services = SocietyService.allServices
    
    var body: some View {
        getSocietyServicesWithCell()
    }
    
    // 1st Trial
    func simpleList() -> some View {
        return List{
            Text("Hello Guys")
            Text("Good morning!")
        }
    }
    
    // 2nd Trial
    func getSocietyServices() -> some View {
        return List(services, id: \.serviceName) {service in
            HStack {
                    Image(service.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading) {
                        Text(service.serviceName)
                    }
            }
        }
    }
    
    // 3rd Trial
    func getSocietyServicesWithCell() -> some View {
        return List(services, id: \.serviceName) {service in
            ServiceCell(service: service)
        }
    }
}

struct ServiceCell: View {
    
    var service: SocietyService
    
    var body: some View {
        getService(service: service)
    }
    
    func getService(service: SocietyService) -> some View {
        return
            HStack {
                Image(service.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(15)
                
                VStack(alignment: .leading) {
                    Text(service.serviceName)
                    Text(service.phoneNumber)
                        .font(Font.caption).bold()
                        .foregroundColor(Color.blue)
                    
                }
        }
    }
}

struct SocietyServices_Previews: PreviewProvider {
    static var previews: some View {
        SocietyServicesListDemo()
    }
}
