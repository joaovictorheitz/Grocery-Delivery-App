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
            if email.contains(" ") || email.contains("@") == false || email.contains(".") == false {
                return true
            }
        }
        
        return false
    }
}
