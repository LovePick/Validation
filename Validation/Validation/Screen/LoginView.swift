//
//  ContentView.swift
//  Validation
//
//  Created by Supapon Pucknavin on 21/10/2565 BE.
//

import SwiftUI


struct LoginView: View {
    // MARK: - PROPERTY
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errors: [LoginError] = []
    
    var isValid: Bool {
        errors.removeAll()
        
        if email.isEmpty {
            errors.append(.emailEmpty)
        } else if !email.isValidEmail {
            errors.append(.emailInvalid)
        }
        
        if(password.isEmpty) {
            errors.append(.passwordEmpty)
        }
        
        return errors.isEmpty
    }
    // MARK: - FUNCTION
  
    
    
    // MARK: - BODY
    var body: some View {
        Form{
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
          
            
            SecureField("Password", text: $password)
          
            
            
            Button("Login"){
                if isValid {
                    //PERFORM LOGIN
                }
            }
            
            ValicationSummaryView(errors: errors)

        }//: FORM
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
