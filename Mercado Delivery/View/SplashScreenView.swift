//
//  SplashScreenView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 20/09/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            LoginScreenView()
        } else {
            ZStack {
                Image("SplashScreen")
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                    self.isActive = true
                })
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
