//
//  HomeView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = ProdutoViewModel()
    
    @State private var mostrarToast = false

    @State private var nomeProduto = ""
    var body: some View {
        VStack {
            List(viewModel.produtos) {
                produto in ItemProdutoView(
                    produto: produto
                )
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)

        }.navigationTitle("Produtos")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                       CarrinhoView()
                    } label: {
                        Image(systemName: "cart")
                    }
                }
            }
        
    }
    
}

