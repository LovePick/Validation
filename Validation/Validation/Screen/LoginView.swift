//
//  ContentView.swift
//  Validation
//
//  Created by Supapon Pucknavin on 21/10/2565 BE.
//

import SwiftUI

struct LoginState {
    var email: String = ""
    var password: String = ""
    var emailError: LoginError?
    var passwordError: LoginError?
    
    
    mutating func clearErrors() {
        emailError = nil
        passwordError = nil
    }
    
    mutating func isValid() -> Bool {
        clearErrors()
        
        if email.isEmpty {
            emailError = .emailEmpty
        }else if !email.isValidEmail {
            emailError = .emailInvalid
        }
        
        if password.isEmpty {
            passwordError = .passwordEmpty
        }
        
        return emailError == nil && passwordError == nil
    }
}
struct LoginView: View {
    // MARK: - PROPERTY
    @State private var loginState = LoginState()

    // MARK: - FUNCTION
  
    
    
    // MARK: - BODY
    var body: some View {
        Form{
            TextField("Email", text: $loginState.email)
                .textInputAutocapitalization(.never)
            if let emailError = loginState.emailError{
                Text(emailError.localizedDescription)
            }
            
            SecureField("Password", text: $loginState.password)
            if let passwordError = loginState.passwordError{
                Text(passwordError.localizedDescription)
            }
            
            
            Button("Login"){
                if loginState.isValid() {
                    //PERFORM LOGIN
                }
            }

        }//: FORM
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
