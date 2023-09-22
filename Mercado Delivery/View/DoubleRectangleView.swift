//
//  LoginWithView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 22/09/23.
//

import SwiftUI

struct DoubleRectangleView: View {
    @State public var text: String
    @State public var h: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Rectangle()
                .frame(width: 150, height: h)
                .opacity(0.3)
            
            Text(text)
                .font(.system(size:15))
                .fontWeight(.light)
            
            Rectangle()
                .frame(width: 150, height: h)
                .opacity(0.3)
        }
    }
}

#Preview {
    DoubleRectangleView(text: "or", h: 1)
}
