//
//  PedidoViewModel.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import Foundation
import SwiftUI
internal import  Combine


class PedidoViewModel: ObservableObject {
    @Published var pedidos: [Pedido] = []
    
    
    func adicionarPedido(itens: [CarrinhoItem], total: Double) {
        let novoPedido = Pedido(itens: itens, total: total, dataCriacao: Date())
        
        pedidos.append(novoPedido)
    }
}
