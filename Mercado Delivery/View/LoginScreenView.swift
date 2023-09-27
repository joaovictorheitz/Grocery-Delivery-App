//
//  LoginScreenView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 20/09/23.
//

import SwiftUI
import Supabase

struct LoginScreenView: View {
    @State private var email: String
    @State private var password: String
    @State private var loginInvalid: Bool
    @ObservedObject var loginManager: LoginManager
    
    public init(email: String = "", password: String = "", loginManager: LoginManager = LoginManager(), loginInvalid: Bool = false) {
        self.email = email
        self.password = password
        self.loginManager = loginManager
        self.loginInvalid = loginInvalid
    }
    
    static var supabase = SupabaseClient(supabaseURL: API.supabaseURL, supabaseKey: API.supabaseServiceKey)
    
    
    var body: some View {
        NavigationStack{
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
                        Button(action: {
                            Task {
                                do {
                                    try await LoginScreenView.supabase.auth.signIn(email: email, password: password)
                                    let session = try await LoginScreenView.supabase.auth.session
                                    print("### Session Info: \(session)")
                                    loginManager.login()
                                    loginInvalid = false
                                } catch {
                                    print("### Sign Up Error: \(error)")
                                    loginInvalid = true
                                }
                            }
                        }) {
                            Text("Entrar")
                                .frame(width:275)
                        }
                        .padding(12)
                        .background(Color(red: 82/255, green: 204/255, blue: 109/255))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    }
                    
                    if loginInvalid {
                        HStack {
                            Text("Credenciais Inválidas!")
                                .foregroundColor(.red)
                        }
                        .padding()
                    }
                    
                    HStack {
                        LoginWithView()
                    }
                    .padding(.top)
                    
                    HStack {
                        Text("Ainda não tem uma conta?")
                        
                        NavigationLink(destination: SignUpView(), label: {
                            Text("Crie uma")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 82/255, green: 204/255, blue: 109/255))
                                .offset(x: -4)
                        })
                    }
                        .padding(.top)
                    
                    Spacer()
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
    
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
