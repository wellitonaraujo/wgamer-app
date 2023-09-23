//
//  CardProduct.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct CardProduct: View {
    var product: Product
 
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ZStack {
                Image(product.image)
                .resizable()
                .scaledToFit()
            }
            .frame(width: 150, height: 120)
            .background(Color("Secondary"))
                
            Text(product.category)
                .font(Font.custom("Inter", size: 10))
                .foregroundColor(Color("Subtitle"))
            
            Text(product.name)
                .font(
                    Font.custom("Inter", size: 13)
                    .weight(.semibold))
                    .foregroundColor(Color("Secondary"))
                    .padding(.bottom, 10)
            
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundColor(.yellow)
                
                Text("4.9 | 231")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
                
                Text("R$ \(product.price)")
                    .foregroundColor(Color("Primary"))
                    .font(.system(size: 15))
                    .padding(.leading, 35)
            }
            .padding(.horizontal, 3)
        }
    }
}

struct CardProduct_Previews: PreviewProvider {
    static var previews: some View {
        CardProduct(product: AppModel().product.product[1])
    }
}
