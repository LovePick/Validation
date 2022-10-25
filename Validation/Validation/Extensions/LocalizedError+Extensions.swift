//
//  LocalizedError+Extensions.swift
//  Validation
//
//  Created by Supapon Pucknavin on 25/10/2565 BE.
//

import Foundation

extension LocalizedError {
    
    var id: Int {
        localizedDescription.hashValue
    }
}
