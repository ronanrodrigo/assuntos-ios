//
//  GetRandomSuggestionBySubjectUsecaseTest.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest
@testable import Assuntos

class GetRandomSuggestionBySubjectUsecaseTest: XCTestCase {
    let gateway = SubjectGatewayFake()
    var usecase: GetRandomSuggestionBySubjectUsecase!
    
    override func setUp() {
        self.usecase = GetRandomSuggestionBySubjectUsecase(gateway: self.gateway)
    }
    
    func testShouldGetASuggestionFromASubject() {
        let suggestion = Suggestion(
            title: "Apocalipse zumbi",
            description: "Apocalipse zumbi é um cenário apocalíptico hipotético popular na ficção científica e no terror.")
        let subject = gateway.addSubject(Subject(title: "Ficção científica"))
        subject.suggestions = [suggestion]
        
        let returnedSuggestion = self.usecase.run(subject)
        
        XCTAssertEqual(returnedSuggestion.title, suggestion.title, "Suggestion does not equal")
    }
}