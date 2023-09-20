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
                Image("LoginBanner")
                    .frame(width: 413.37, height: 290.0)

                Spacer()
            }
            
            HStack {
                Text("Login")
                    .font(.system(size:40, weight: .bold))
                
                Spacer()
            }
            .offset(x: 40, y: -40)
            
            VStack(alignment: .trailing) {
                TextField1(label: "Email", value: $email, security: false)
                    .padding(.bottom)
                TextField1(label: "Senha", value: $password, security: true)
                
                Text("Esqueceu sua senha?")
                    .foregroundColor(Color(red: 82/255, green: 204/255, blue: 109/255))
                    
            }
            .padding(.top, 120.0)
            
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
