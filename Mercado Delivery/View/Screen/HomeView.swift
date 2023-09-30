//
//  HomeView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomeView()
}
