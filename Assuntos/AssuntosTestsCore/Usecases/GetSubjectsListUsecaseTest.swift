//
//  GetSubjectsListUseCaseTest.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest
@testable import Assuntos

class GetSubjectsListUsecaseTest: XCTestCase {
    let gateway = SubjectGatewayFake()
    var usecase: GetSubjecstListUsecase!
    
    override func setUp() {
        super.setUp()
        self.usecase = GetSubjecstListUsecase(gateway: gateway)
    }
    
    func testShouldGetACreatedSubjectInSubjectList() {
        let subject = Subject(title: "Assunto aleatorio")
        self.gateway.addSubject(subject)
        
        let subjects = self.usecase.run()
        
        XCTAssertEqual(subjects[0].title, subject.title)
    }
    
    func testShouldGetTwoCreatedSubjecstInSubjectList() {
        let subject = Subject(title: "Assunto aleatorio")
        self.gateway.addSubject(subject)
        self.gateway.addSubject(subject)
        
        let subjects = self.usecase.run()
        
        XCTAssertEqual(subjects.count, 2)
    }
}
