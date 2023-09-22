//
//  LoginScreenView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 20/09/23.
//

import SwiftUI

struct LoginScreenView: View {
    public init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    @State private var email: String
    @State private var password: String
    
    var body: some View {
        ZStack {
            Color(red: 252/255, green: 252/255, blue: 252/255)
            
            VStack {
                VStack {
                    Image("LoginBanner")
                        .frame(width: 413.37, height: 290.0)

                    Spacer()
                }
                .frame(height: 290)
                
                HStack {
                    Text("Login")
                        .font(.system(size:40, weight: .bold))
                    
                    Spacer()
                }
                .offset(x: 40, y: -20)
                
                VStack(alignment: .trailing) {
                    TextField1View(label: "Email", value: $email, security: false)
                        .padding(.bottom)
                    TextField1View(label: "Senha", value: $password, security: true)
                    
                    Text("Esqueceu sua senha?")
                        .foregroundColor(Color(red: 82/255, green: 204/255, blue: 109/255))
                        .padding(.vertical, 5.0)
                }
                
                HStack {
                    Button("Entrar") {
                        
                    }
                    .padding(12)
                    .frame(width:300)
                    .background(Color(red: 82/255, green: 204/255, blue: 109/255))
                    .cornerRadius(10)
                }
                
                HStack {
                    LoginWithView()
                }
                .padding(.top)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
