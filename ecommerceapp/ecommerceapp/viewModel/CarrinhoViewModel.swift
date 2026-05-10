//
//  CarrinhoViewModel.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import Foundation
import SwiftUI
internal import Combine


class CarrinhoViewModel: ObservableObject {
    @Published var itens: [CarrinhoItem] = []
    
    
    func adicionarItem(produto: Produto) {
        if let index = itens.firstIndex(where: {
            $0.produto.id == produto.id
        }) {
            var item = itens[index]
            item.quantidade += 1
            itens[index] = item
        } else {
            let novoItem  = CarrinhoItem(produto: produto, quantidade: 1)
            itens.append(novoItem)
        }
        
        
    }
    
    
    func remover(produto: Produto) {

           guard let index = itens.firstIndex(where: {
               $0.produto.id == produto.id
           }) else {
               return
           }

           if itens[index].quantidade > 1 {
               var item = itens[index]
               item.quantidade -= 1
               itens[index] = item
           } else {
               itens.remove(at: index)

           }

       }



       var total: Double {
           itens.reduce(0) { parcial, item in
               parcial + (
                   item.produto.preco * Double(item.quantidade)
               )

           }

       }


       var quantidadeItens: Int {
           itens.reduce(0) { parcial, item in
               parcial + item.quantidade
           }

       }
}
