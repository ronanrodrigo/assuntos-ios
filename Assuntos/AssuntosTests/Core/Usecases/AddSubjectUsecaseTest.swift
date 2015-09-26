//
//  AddSubjectUsecaseTest.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest
@testable import Assuntos

class AddSubjectUsecaseTest: XCTestCase {
    let gateway = SubjectGatewayFake()
    var usecase: AddSubjectUsecase!
    
    override func setUp() {
        super.setUp()
        self.usecase = AddSubjectUsecase(gateway: gateway)
    }
    
    func testShouldAddNewSubject() {
        let subject = Subject(title: "Assunto aleatorio")
        
        self.usecase.run(subject)
        let savedSubject = self.gateway.subject
        
        XCTAssertEqual(savedSubject!.title, subject.title, "Titles aren't equal")
    }
}