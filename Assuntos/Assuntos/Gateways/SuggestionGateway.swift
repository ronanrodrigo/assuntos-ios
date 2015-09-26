//
//  SuggestionGatewayFake.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

class SuggestionGateway: GatewaySuggestion {
    var suggestions: [Suggestion]
    var suggestion: Suggestion
    
    init () {
        self.suggestions = []
        self.suggestion = Suggestion()
    }
    
    func addSuggestion(suggestion: Suggestion, subject: Subject) -> Suggestion {
        self.suggestion = suggestion
        self.suggestion.subject = subject
        self.suggestions.append(suggestion)
        return suggestion
    }
    
    func getRandomSuggestion() -> Suggestion {
        return self.suggestions.first!
    }
}