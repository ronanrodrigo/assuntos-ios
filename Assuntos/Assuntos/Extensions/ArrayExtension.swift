//
//  ArrayExtension.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

extension Array {
    func sample() -> Element {
        let randomIndex = Int(rand()) % count
        return self[randomIndex]
    }
}
