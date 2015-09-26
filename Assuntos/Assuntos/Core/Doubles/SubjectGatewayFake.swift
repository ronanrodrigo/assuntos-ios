//
//  SubjectGatewayFake.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class SubjectGatewayFake: GatewaySubject {
    var subjects: [Subject]
    var subject: Subject

    init(){
        self.subjects = []
        self.subject = Subject()
    }
    
    func addSubject(subject: Subject) -> Subject {
        self.subject = subject
        self.subjects.append(self.subject)
        return self.subject
    }
    
    func getSubjects() -> [Subject] {
        return subjects
    }
    
    func getRandomSuggestion(subject: Subject) -> Suggestion {
        return subject.suggestions!.sample()
    }
}