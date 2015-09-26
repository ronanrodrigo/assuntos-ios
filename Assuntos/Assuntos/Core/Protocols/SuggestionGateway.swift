//
//  SuggestionGateway.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

protocol SuggestionGateway {
    var suggestion: Suggestion {get set}
    
    func addSuggestion(suggestion: Suggestion, subject: Subject) -> Suggestion
    
    func getRandomSuggestion() -> Suggestion
}
