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
    @State private var loginFormError = LoginFormError()
    
    
    var isFormValid:Bool {
        clearForm()
        
        if email.isEmpty {
            loginFormError.email = "Email is requored!"
        } else if email.isValidEmail{
            loginFormError.email = "Email is not in correct format!"
        }
        
        if password.isEmpty {
            loginFormError.password = "Password is required"
        }
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    // MARK: - FUNCTION
    private func clearForm() {
        loginFormError = LoginFormError()
    }
    
    
    
    
    // MARK: - BODY
    var body: some View {
        Form{
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            if(!loginFormError.email.isEmpty){
                Text(loginFormError.email)
                    .font(.caption)
            }
            
            
            SecureField("Password", text: $password)
            if(!loginFormError.password.isEmpty){
                Text(loginFormError.password)
                    .font(.caption)
            }
            
            
            Button("Login"){
                if isFormValid {
                    // SUBMIT THE FORM
                }
            }
//            .disabled(!isFormValid)
        }//: FORM
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
