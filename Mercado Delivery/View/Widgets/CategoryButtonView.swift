//
//  CategoryButtonView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI

struct CategoryButtonView: View {
    @State public var title: String
    @State public var image: String
    
    var body: some View {
        Button(action: {}, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(color: .white, radius: 7, x: -7, y: 5)
                VStack {
                    Text(title)
                        .foregroundColor(.black)
                    Image(image)
                        .resizable()
                        .frame(maxWidth: 67, maxHeight: 50)
                }
                .padding(20)
            }
            .frame(width: 115, height: 115)
            
        })
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.908), radius: 7, x: -7, y: 5)
    }
}

#Preview {
    CategoryButtonView(title: "Congelados", image: "Congelados")
}
