//
//  GetRandomSubjectUsecase.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

class GetRandomSuggestionUsecase {
    var gateway: SuggestionGateway
    
    init(gateway: SuggestionGateway) {
        self.gateway = gateway
    }
    
    func run() -> Suggestion {
        return self.gateway.getRandomSuggestion()
    }
}