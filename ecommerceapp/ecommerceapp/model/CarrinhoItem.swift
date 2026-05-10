//
//  CarrinhoItem.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import Foundation


struct CarrinhoItem: Identifiable {
    var id: UUID = UUID()
    var produto: Produto
    var quantidade: Int
}
