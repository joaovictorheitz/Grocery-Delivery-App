//
//  ContentView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 20/09/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var loginManager = LoginManager()
    
    var body: some View {
        if loginManager.isLoggedIn {
            Text("Hello World!")
            
            //ContentView()
                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                //.transition(.move(edge: .leading))
        } else {
            LoginScreenView(loginManager: loginManager)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .transition(.move(edge: .leading))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
