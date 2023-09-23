//
//  Product.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import Foundation



struct ProductModel {
    let product: [Product]
    let categories: [ProductCategory]
}

struct Product: Identifiable {
    var id: String
    let name: String
    let price: Int
    let image: String
    let description: String?
    let category: String
}


struct ProductCategory: Identifiable {
    var id: String
    let name: String
    let icon: String
}

