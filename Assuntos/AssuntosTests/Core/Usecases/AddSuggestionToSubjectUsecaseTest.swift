//
//  AddSuggestionToSubjectUsecaseTest.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest
@testable import Assuntos

class AddSuggestionToSubjectUsecaseTest: XCTestCase {
    let gateway = SuggestionGatewayFake()
    var usecase: AddSuggestionToSubjectUsecase!
    
    override func setUp() {
        super.setUp()
        self.usecase = AddSuggestionToSubjectUsecase(gateway: self.gateway)
    }
    
    func testShouldCreateASuggestionInSubject() {
        let suggestion = Suggestion(title: "Apocalipse zumbi", description: "Apocalipse zumbi é um cenário apocalíptico hipotético popular na ficção científica e no terror.")
        let subject = SubjectGatewayFake().addSubject(Subject(title: "Ficção científica"))
        
        self.usecase.run(suggestion, subject: subject)
        
        XCTAssertEqual(suggestion.subject?.title, subject.title)
    }
}
