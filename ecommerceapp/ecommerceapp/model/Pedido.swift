//
//  Pedido.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import Foundation


struct Pedido: Identifiable {
    var id: UUID = UUID()
    var itens:[CarrinhoItem]
    var total: Double
    var dataCriacao: Date
    
}
