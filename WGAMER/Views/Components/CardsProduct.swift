//
//  CardsProduct.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct CardsProduct: View {
    var products: [Product]
    
    var body: some View {
            NavigationStack {
                VStack(alignment: .center){
                    LazyVGrid(columns: [
                        GridItem(),
                        GridItem()],
                            alignment: .center, spacing: 20) {
                            
                        ForEach(products) { product in
                            NavigationLink(destination: { ProductDetailView(product: product) },
                                            label: {
                                CardProduct(product: product)
                            })
                        }
                    }
                }
        }
    }
}

struct CardsProduct_Previews: PreviewProvider {
    static var previews: some View {
            CardsProduct(products: AppModel().product.product)
    }
}
