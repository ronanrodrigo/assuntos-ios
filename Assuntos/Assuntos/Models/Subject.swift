//
//  Subject.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

class Subject {
    var title: String?
    var suggestions: [Suggestion]?
    
    init() { }
    
    init(title: String) {
        self.title = title
    }
    
    init(title: String, suggestions: [Suggestion]) {
        self.title = title
        self.suggestions = suggestions
    }

}