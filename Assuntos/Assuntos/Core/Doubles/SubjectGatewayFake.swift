//
//  SubjectGatewayFake.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class SubjectGatewayFake: SubjectGateway {
    var subjects: [Subject]
    var subject: Subject?

    init(){
        self.subjects = []
    }
    
    func addSubject(subject: Subject) {
        self.subject = subject
        self.subjects.append(self.subject!)
    }
    
    func getSubjects() -> [Subject] {
        return subjects
    }
}