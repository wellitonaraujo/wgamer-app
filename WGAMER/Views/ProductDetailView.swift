//
//  ProductDetailView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    @State var addCart: Int = 0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing){
                Image("cart")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .padding(.bottom, 10)
                ZStack {
                    Image(product.image)
                    .resizable()
                    .scaledToFit()
                }
                .frame(width: 350, height: 250)
                .background(Color("Secondary"))
                .cornerRadius(10)
        
                
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(product.category)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text(product.name)
                            .font(.system(size: 21))
                            .fontWeight(.semibold)
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.yellow)
                            
                            Text("4.9 | Avaliações")
                                .font(.system(size: 13))
                                .foregroundColor(.gray)
                        }
                    } //VStack
                    Spacer()
                    
                    Button(action: {
                        addCart += 1
                    },
                           label: {
                            ZStack {
                                Color("Primary")
                                    .frame(width: 70, height: 45)
                                    .cornerRadius(8)
                                    
                                HStack {
                                    Image("cart-white")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        
                                    Text("\(addCart)")
                                        .foregroundColor(.white)
                                        .padding(.trailing, 7)
                                        .fontWeight(.semibold)
                                }
                            }
                    })
                }
                .padding(.bottom, 30)
                .padding(.top, 15)
                
                Text(product.description ?? "")
                    .lineSpacing(8)
                    .foregroundColor(.gray)
                
                    .font(.system(size: 16))
            }
            .navigationTitle(product.name)
            .padding(.horizontal, 20)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: AppModel().product.product[1])
    }
}
