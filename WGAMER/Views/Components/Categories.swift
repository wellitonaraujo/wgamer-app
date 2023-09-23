//
//  Categories.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct Categories: View {
    var categories: [ProductCategory]
    @State var selected: Bool = false
    
    
    
    var body: some View {
        HStack(){
            ForEach(categories) { category in
                Category(category: category, selected: selected)
            }
        }.padding(.bottom, 20)
        
    }
}




struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories(categories: AppModel().product.categories)
    }
}
