//
//  Header.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct Header: View {
    @State var searchText: String = ""
    
    var body: some View {
        HStack {
            TextField("Buscar...", text: $searchText)
                .padding()
                .frame(height: 41)
                .background(RoundedRectangle(cornerRadius: 5)
                .stroke(Color("InputBorder"), lineWidth: 1))
                .background(Color("Input"))
                .padding(.trailing, 43)
                .font(.footnote)
            Image("cart")
                .resizable()
                .frame(width: 32, height: 32)
            Image("message")
                .resizable()
                .frame(width: 32, height: 32)

        }
        .padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
