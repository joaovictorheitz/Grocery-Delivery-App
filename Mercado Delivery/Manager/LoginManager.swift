//
//  LoginManager.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 23/09/23.
//

import Foundation
import SwiftUI

class LoginManager : ObservableObject {
    @Published var isLoggedIn = false
    
    func login() {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            withAnimation {
                self.isLoggedIn = true
            }
        }
    }
    
    func invalidEmailCheck(email: String) -> Bool {
        if email != "" {
            if email.contains(" ") || !email.contains("@") || !email.contains(".") {
                return true
            }
        }
        return false
    }
    
    func invalidVerifyPass(pass: String, verifyPass: String) -> Bool {
        if pass != verifyPass {
            return false
        } else {
            return true
        }
    }
    
    func verifyParameters(email: String, pass: String, verifyPass: String) -> Bool {
        if !invalidEmailCheck(email: email) && !invalidVerifyPass(pass: pass, verifyPass: verifyPass) {
            return true
        } else {
            return false
        }
    }
}
