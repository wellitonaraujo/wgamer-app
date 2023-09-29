//
//  TabBarView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
           SignInView()
                .tabItem {
                    Text("Inicio")
                    Image(systemName: "house")
                }
            
            Text("Carrinho")
                .tabItem {
                    Text("Carrinho")
                    Image(systemName: "cart")
                }
            
            AccountView()
                .tabItem {
                    Text("Conta")
                    Image(systemName: "person")
                }
        }
        .accentColor(Color("Primary"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
