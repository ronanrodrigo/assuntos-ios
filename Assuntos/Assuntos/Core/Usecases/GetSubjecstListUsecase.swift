//
//  GetSubjectListUsecase.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

class GetSubjecstListUsecase {
    var gateway: GatewaySubject
    
    init(gateway: GatewaySubject) {
        self.gateway = gateway
    }
    
    func run() -> [Subject] {
        return self.gateway.getSubjects()
    }
}