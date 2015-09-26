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
        let expectedSubject = self.gateway.subject
        
        XCTAssertEqual(expectedSubject.title, subject.title, "Titles aren't equal")
    }
    
    func testShouldNetAddNewSubjectWithoutTitle() {
        let subject = Subject()
        
        self.usecase.run(subject)
        let subjects = self.gateway.subjects
        
        XCTAssertEqual(subjects.count, 0, "Subject was save")
    }
}