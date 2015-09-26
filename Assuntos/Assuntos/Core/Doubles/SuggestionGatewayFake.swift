//
//  SuggestionGatewayFake.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

class SuggestionGatewayFake: SuggestionGateway {
    var suggestion: Suggestion
    
    init () {
        self.suggestion = Suggestion()
    }
    
    func addSuggestion(suggestion: Suggestion, subject: Subject) -> Suggestion {
        self.suggestion = suggestion
        self.suggestion.subject = subject
        return suggestion
    }
}