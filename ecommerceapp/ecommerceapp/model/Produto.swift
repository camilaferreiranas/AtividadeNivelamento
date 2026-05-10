//
//  Produto.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import Foundation


struct Produto: Identifiable, Hashable {
    var id: UUID =  UUID()
    var titulo: String
    var descricao: String
    var preco: Double
    var imagem: String 
}
