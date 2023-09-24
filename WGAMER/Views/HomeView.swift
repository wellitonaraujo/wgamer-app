//
//  HomeView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct HomeView: View {
    var appModel: AppModel = AppModel()

    var body: some View {
        NavigationStack {
            Header()
            ScrollView(showsIndicators: false) {
               
                Banner()
                Categories(categories: appModel.product.categories)
                ProductListView()
            }
           
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
