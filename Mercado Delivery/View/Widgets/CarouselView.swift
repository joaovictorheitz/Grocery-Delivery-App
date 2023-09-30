//
//  CarouselView.swift
//  Mercado Delivery
//
//  Created by João Victor de Souza Guedes on 30/09/23.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image
}

let roles = ["Campaign", "Campaign", "Campaign", "Campaign", "Campaign", "Campaign"]

struct CarouselView: View {
    
    let items: [Item] = roles.map {
        Item(image: Image($0))
    }
    
    var body: some View {
        HStack {
            ACarousel(items) {item in item.image}
                .frame(height: 210)
        }
    }
}

#Preview {
    CarouselView()
}
