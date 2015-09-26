//
//  GetRandomSubjectUsecaseTest.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import XCTest
@testable import Assuntos

class GetRandomSuggestionUsecaseTest: XCTestCase {
    let gateway = SuggestionGatewayFake()
    var usecase: GetRandomSuggestionUsecase!
    
    override func setUp() {
        super.setUp()
        self.usecase = GetRandomSuggestionUsecase(gateway: self.gateway)
    }
    
    func testShouldGetARandomSuggestion() {
        let firstSuggestion = Suggestion(
            title: "Apocalipse zumbi",
            description: "Apocalipse zumbi é um cenário apocalíptico hipotético popular na ficção científica e no terror.")
        let lastSuggestion = Suggestion(
            title: "Viagem no tempo",
            description: "Viagem no tempo se refere ao conceito de mover-se para trás e/ou para frente através de pontos diferentes no tempo em um modo análogo à mobilidade pelo espaço.")
        let subject = SubjectGatewayFake().addSubject(Subject(title: "Ficção científica"))
        gateway.addSuggestion(firstSuggestion, subject: subject)
        gateway.addSuggestion(lastSuggestion, subject: subject)
        
        let suggestion = self.usecase.run()
        
        XCTAssertEqual(suggestion.title, firstSuggestion.title, "Not the same sugestion")
    }
}