//
//  SocietyServicesWithNavigation.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//

import Foundation

import SwiftUI

struct SocietyServicesNavigationDemo: View {
    
    let services = SocietyService.allServices
    
    var body: some View {
        //Try follwoing code
        //Trial1
        //getSocietyServicesWithNav(services: services)
        //Trial2
        //NavigationView {
        //   getSocietyServices(services: services)
        //       .navigationBarTitle("Services")
        //}
        NavigationView {
            getSocietyServicesWithDetails(services: services)
                .navigationBarTitle("Services")
        }
    }
    
}
    
//1st Trial
//All the Navigation setup added in the method
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
//in this method there is only List with NavigationLink attached destination passing dynamic data
func getSocietyServices(services: [SocietyService]) -> some View {
    return
        
        List(services, id: \.serviceName) {service in
            
            NavigationLink(destination: Text(service.serviceName)) {
                ServiceCell(service: service)
            }
    }
}

//3rd Trial
//this method is like 2nd Trial only diffrence is it has more sophisticated version detail screen with dynamic data passing.
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
