//
//  ProductListView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 23/09/23.
//

import SwiftUI

struct ProductListView: View {
    var appModel: AppModel = AppModel()

    var body: some View {
        NavigationStack {
            CardsProduct(products: appModel.product.product)
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
