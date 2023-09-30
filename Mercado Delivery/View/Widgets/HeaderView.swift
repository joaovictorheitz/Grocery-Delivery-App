//
//  HeaderView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                HStack(alignment: .center) {
                    
                    Image("Logo")
                    
                    Text("Carrot")
                        .foregroundStyle(Color.gray)
                        .font(Font.custom("Roboto-Bold", size: 20))
                    
                    Spacer()
                }
                .padding(.leading)
                
                Spacer()
                
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.gray)
                    Text("Home")
                        .foregroundStyle(Color.gray)
                        .font(Font.custom("Roboto-Bold", size: 20))
                }
                .padding(.trailing, 30.0)
            }
            Rectangle()
                .frame(width: .infinity, height: 0.5)
                .foregroundColor(.gray)

        }
        .frame(height: 80)
        .padding(.top)
    }
}

#Preview {
    HeaderView()
}
