//
//  ItemProduto.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct ItemProdutoView: View {
    
    let produto: Produto
  
    
    @EnvironmentObject var carrinho: CarrinhoViewModel
    
    var body: some View {
        
        
        HStack(spacing: 16) {
          ZStack {
             RoundedRectangle(cornerRadius: 16)
               .fill(Color.blue.opacity(0.12))
               .frame(width: 70, height: 70)
              Image(systemName: produto.imagem)
                           .font(.system(size: 30))
                           .foregroundStyle(.blue)
                   }

                   VStack(alignment: .leading, spacing: 6) {
                       Text(produto.titulo)
                           .font(.headline)
                           .fontWeight(.semibold)
                       Text(produto.descricao)
                           .font(.subheadline)
                           .foregroundStyle(.secondary)
                           .lineLimit(2)
                       Text(produto.preco, format: .currency(code: "BRL"))
                           .font(.title3)
                           .fontWeight(.bold)
                           .foregroundStyle(.green)
                   }

                   Spacer()

            Button {
                carrinho.adicionarItem(produto: produto)
              
                
            }label: {
                Image(systemName: "plus.circle.fill")
                    .font(.title2)
            }
               }
               .padding()
               .background(.background)
               .clipShape(RoundedRectangle(cornerRadius: 20))
               .shadow(
                   color: .black.opacity(0.08),
                   radius: 8,x: 0,y: 4
               )
               .padding(.horizontal)
           }
    
}

