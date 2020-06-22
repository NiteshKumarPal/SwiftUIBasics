//
//  SocietyService.swift
//  SwiftUILearning
//
//  Created by Nitesh Kumar Pal on 17/06/20.
//

import Foundation

struct SocietyService {
    var serviceName = ""
    var image = ""
    var phoneNumber = ""
}

extension SocietyService {
    static var allServices: [SocietyService] {
        return [
            SocietyService(serviceName: "Plumbing", image: "plumber", phoneNumber: "98290000"),
            SocietyService(serviceName: "Electrician", image: "electrician", phoneNumber: "91450000"),
            SocietyService(serviceName: "Gardner", image: "gardner", phoneNumber: "95670000")
        ]
    }
}
