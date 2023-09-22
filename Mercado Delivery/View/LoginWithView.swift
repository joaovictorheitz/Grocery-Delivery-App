//
//  LoginWithView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 22/09/23.
//

import SwiftUI

struct LoginWithView: View {
    var body: some View {
        let size: Double = 42
        let padding: Double = 20
        
        VStack {
            VStack {
                DoubleRectangleView(text: "or", h: 0.5)
            }
            
            HStack {
                Image("google_icon")
                    .resizable()
                    .frame(width: size, height: size)
                    .padding(.horizontal, padding)
                
                Image("facebook_icon")
                    .resizable()
                    .frame(width: size, height: size)
                    .padding(.horizontal, padding)
            }
            
            HStack {
                Text("Ainda não tem uma conta?")
                
                Text("Crie uma")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 82/255, green: 204/255, blue: 109/255))
                    .offset(x: -4)
            }
                .padding(.top)
        }
    }
}

#Preview {
    LoginWithView()
}
