//
//  SocietyServicesWithNavigation.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//  Copyright © 2020 Initiator. All rights reserved.
//

import Foundation

import SwiftUI

struct SocietyServicesNavigationDemo: View {
    
    let services = SocietyService.allServices
    
//    // Navigation setup
//    var body: some View {
//        getSocietyServicesWithNav(services: services)
//    }
    
    var body: some View {
        NavigationView {
            getSocietyServicesWithDetails(services: services)
                .navigationBarTitle("Services")
        }
    }
    
}
    
//1st Trial
func getSocietyServicesWithNav(services: [SocietyService]) -> some View {
    return
        NavigationView {
            List(services, id: \.serviceName) {service in
                
                NavigationLink(destination: Text("Detail screen")) {
                    ServiceCell(service: service)
                }
            }.navigationBarTitle("Services")
    }
}

//2nd Trial
func getSocietyServices(services: [SocietyService]) -> some View {
    return
        
        List(services, id: \.serviceName) {service in
            
            NavigationLink(destination: Text(service.serviceName)) {
                ServiceCell(service: service)
            }
    }
}

//3rd Trial
func getSocietyServicesWithDetails(services: [SocietyService]) -> some View {
    return
        
        List(services, id: \.serviceName) {service in
            
            NavigationLink(destination: ServiceDetail(service: service)) {
                
                ServiceCell(service: service)
            }
    }
}


struct SocietyServicesNavigationDemoPreviews: PreviewProvider {
    static var previews: some View {
        SocietyServicesNavigationDemo()
    }
}
