//
//  Category.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct Category: View {
    var category: ProductCategory
    @State var selected: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                selected.toggle()
            }, label: {
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 30, height: 30)
                      .background(RoundedRectangle(cornerRadius: 2)
                      .stroke(Color("Secondary"), lineWidth: 1))
                      .background(Color(selected ? "Secondary" : "White"))
                      
                    Image(category.icon)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(selected ? "Primary" : "Secondary"))
                }
            })
            
            Text(category.name)
                .font(.system(size: 10, weight: .medium))
                .foregroundColor(Color("Secondary"))
        }
        .frame(width: 70)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(category: AppModel().product.categories[1], selected: true)
    }
}
