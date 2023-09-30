//
//  SignUpView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 27/09/23.
//

import SwiftUI
import Supabase

struct SignUpView: View {
    @State private var email: String
    @State private var password: String
    @State private var verifyPassword: String
    @State private var showingAlert: Bool = false
    @ObservedObject var loginManager: LoginManager
    static var supabase = SupabaseClient(supabaseURL: API.supabaseURL, supabaseKey: API.supabaseServiceKey)
    
    public init(email: String = "", password: String = "", loginManager: LoginManager = LoginManager(), verifyPassword: String = "") {
        self.email = email
        self.password = password
        self.loginManager = loginManager
        self.verifyPassword = verifyPassword
    }
    //@Environment(\.presentationMode) var presentationMode
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
                    Button(action: {
                        Task {
                            if !loginManager.verifyParameters(email: email, pass: password, verifyPass: verifyPassword) {
                                do {
                                    try await SignUpView.supabase.auth.signUp(email: email, password: password)
                                    showingAlert = true

                                    loginManager.login()
                                } catch {
                                    print("### ERROR \(error)")
                                }
                            }
                        }
                        
                        //self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Cadastre-se")
                            .frame(width:290)
                    }
                    .padding(12)
                    .background(Color(red: 82/255, green: 204/255, blue: 109/255))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .alert("Verifique sua caixa de entrada!", isPresented: $showingAlert) {
                        Button("Ok", role: .cancel) { }
                    }
                }
                
                if loginManager.invalidEmailCheck(email: email) {
                    HStack {
                        Text("Credenciais Inválidas!")
                            .foregroundColor(.red)
                    }
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
