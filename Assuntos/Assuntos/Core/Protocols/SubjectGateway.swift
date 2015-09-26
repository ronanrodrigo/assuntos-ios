//
//  SubjectGateway.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

protocol SubjectGateway {
    var subject : Subject {get set}
    
    func addSubject(subject: Subject) -> Subject
    
    func getSubjects() -> [Subject]
}