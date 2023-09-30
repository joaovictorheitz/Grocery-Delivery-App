//
//  TabView1.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI

struct TabView1: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("House")
                        .padding(0.5)
                }
            HomeView()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                        .padding(0.5)
                }
            
            HomeView()
                .tabItem() {
                    Image(systemName: "cart")
                    Text("Cart")
                        .padding(0.5)
                }
            
            HomeView()
                .tabItem() {
                    Image(systemName: "tag")
                    Text("Campaigns")
                        .padding(0.5)
                }
            
            HomeView()
                .tabItem() {
                    Image(systemName: "person")
                    Text("Profile")
                        .padding(0.5)
                }
        }
    }
}

#Preview {
    TabView1()
}
