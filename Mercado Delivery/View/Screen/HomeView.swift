//
//  HomeView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        let categories1 = [(key: "Frutas", "Banana"), (key: "Vegetais", "Vegetais"),(key: "Padaria", "Croissant")]
        let categories2 = [(key: "Açougue", "Açougue"), (key: "Bebidas", "Bebidas"),(key: "Enlatados", "Enlatados")]
        let categories3 = [(key: "Petshop", "Petshop"), (key: "Higiene", "Higiene"),(key: "Congelados", "Congelados")]
        
        NavigationStack {
            
            
            ZStack {
                VStack {
                    HeaderView()
                    
                    ScrollView() {
                        CarouselView()
                        
                        VStack {
                            HStack {
                                ForEach(categories1, id: \.key) { key, value in
                                    NavigationLink(destination: ContentView(), label: {
                                        CategoryButtonView(title: key, image: value)
                                    })
                                }
                            }
                            .padding(.bottom)
                            
                            HStack {
                                ForEach(categories2, id: \.key) { key, value in
                                    NavigationLink(destination: ContentView(), label: {
                                        CategoryButtonView(title: key, image: value)
                                    })
                                }
                            }
                            .padding(.bottom)
                            
                            HStack {
                                ForEach(categories3, id: \.key) { key, value in
                                    NavigationLink(destination: ContentView(), label: {
                                        CategoryButtonView(title: key, image: value)
                                    })
                                }
                            }
                            .padding(.bottom)
                        }
                    }
                    
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    HomeView()
}
