//
//  InputView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 20/09/23.
//

import SwiftUI

struct TextField1View: View {
    public var label: String
    public var value: Binding<String>
    public var security: Bool
    public var width: Double? = 300
    
    var body: some View {
        VStack {
            if(security) {
                SecureField(label, text: value)
                    .frame(width: width!, height: 25)
                Rectangle()
                    .frame(width: width!, height: 1.0)
                    .opacity(0.5)
            } else {
                TextField(label, text: value)
                    .frame(width: width!, height: 25)
                    .autocorrectionDisabled()
                Rectangle()
                    .frame(width: width!, height: 1.0)
                    .opacity(0.5)
            }
        }
    }
}

struct TextField1View_Previews: PreviewProvider {
    @State static private var x: String = ""
    
    static var previews: some View {
        TextField1View(label: "Email", value: $x, security: false)
    }
}
