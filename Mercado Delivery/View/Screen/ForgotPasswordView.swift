//
//  ForgotPasswordView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 29/09/23.
//

import SwiftUI
import Supabase

struct ForgotPasswordView: View {
    @State var email: String
    @State private var showingAlert: Bool = false
    static var supabase = SupabaseClient(supabaseURL: API.supabaseURL, supabaseKey: API.supabaseServiceKey)
    
    public init(email: String = "") {
        self.email = email
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                HStack {
                    Text("Esqueceu a senha?")
                        .font(.system(size:35, weight: .bold))
                    
                    Spacer()
                }
                .padding(30)
                
                HStack {
                    TextField1View(label: "E-mail", value: $email, security: false, width: 320)
                }
                
                HStack {
                    Button(action: {
//                        Task {
//                            do {
//                                try await ForgotPasswordView.supabase.auth.resetPasswordForEmail(email)
//                                print("### Successful!")
//
//                            } catch {
//                                print("### \(error)")
//                            }
//                        }
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
                .padding()
                
                Spacer()
            }
        }
    }
}
#Preview {
    ForgotPasswordView()
}
