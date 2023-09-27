//
//  SignUpView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 27/09/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String
    @State private var password: String
    @State private var verifyPassword: String
    @ObservedObject var loginManager: LoginManager
    
    public init(email: String = "", password: String = "", loginManager: LoginManager = LoginManager(), verifyPassword: String = "") {
        self.email = email
        self.password = password
        self.loginManager = loginManager
        self.verifyPassword = verifyPassword
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                HStack {
                    Text("Cadastro")
                        .font(.system(size:40, weight: .bold))
                    
                    Spacer()
                }
                .padding()
                
                VStack(spacing: 25) {
                    TextField1View(label: "E-mail", value: $email, security: false, width: 320)
                    TextField1View(label: "Senha", value: $password, security: true, width: 320)
                    TextField1View(label: "Senha Novamente", value: $verifyPassword, security: true, width: 320)
                }
                
                HStack {
                    Button("Cadastra-se") {
                        print("teste")
                    }
                    .padding(12)
                    .frame(width:300)
                    .background(Color(red: 82/255, green: 204/255, blue: 109/255))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignUpView()
}
