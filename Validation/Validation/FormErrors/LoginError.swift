//
//  LoginError.swift
//  Validation
//
//  Created by Supapon Pucknavin on 25/10/2565 BE.
//

import Foundation

enum LoginError: Error, LocalizedError {
    case emailEmpty
    case emailInvalid
    case passwordEmpty
    
    var errorDescription: String? {
        switch self {
        case .emailEmpty:
            return "Email cannot be empty!"
        case .emailInvalid:
            return "Email is not in correct format"
        case .passwordEmpty:
            return "Password cannot be empty"
        }
    }
}
