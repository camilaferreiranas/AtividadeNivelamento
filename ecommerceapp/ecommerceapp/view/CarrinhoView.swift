//
//  CarrinhoView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct CarrinhoView: View {

    @EnvironmentObject var carrinho: CarrinhoViewModel
    @EnvironmentObject var pedidos: PedidoViewModel

    var body: some View {

        VStack {


            if carrinho.itens.isEmpty {

                Spacer()

                VStack(spacing: 16) {

                    Image(systemName: "cart")
                        .font(.system(size: 60))
                        .foregroundStyle(.gray)

                    Text("Seu carrinho está vazio")
                        .font(.title3)
                        .fontWeight(.semibold)

                    Text("Adicione produtos para continuar")
                        .foregroundStyle(.secondary)
                }

                Spacer()

            } else {

   
                ScrollView {

                    LazyVStack(spacing: 16) {

                        ForEach(carrinho.itens) { item in

                            HStack(spacing: 16) {

                                ZStack {

                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(Color.blue.opacity(0.12))
                                        .frame(width: 65, height: 65)

                                    Image(systemName: item.produto.imagem)
                                        .font(.title2)
                                        .foregroundStyle(.blue)
                                }

                                VStack(alignment: .leading, spacing: 6) {

                                    Text(item.produto.titulo)
                                        .font(.headline)

                                    Text(item.produto.descricao)
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                        .lineLimit(2)

                                    Text(
                                        item.produto.preco,
                                        format: .currency(code: "BRL")
                                    )
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                                }

                                Spacer()

                                VStack(spacing: 10) {

                                    Button {

                                        carrinho.adicionarItem(
                                            produto: item.produto
                                        )

                                    } label: {

                                        Image(systemName: "plus.circle.fill")
                                            .font(.title2)
                                    }

                                    Text("\(item.quantidade)")
                                        .font(.headline)
                                        .frame(minWidth: 24)

                                    Button {

                                        carrinho.remover(
                                            produto: item.produto
                                        )

                                    } label: {

                                        Image(systemName: "minus.circle.fill")
                                            .font(.title2)
                                            .foregroundStyle(.red)
                                    }
                                }
                            }
                            .padding()
                            .background(.background)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 18)
                            )
                            .shadow(
                                color: .black.opacity(0.05),
                                radius: 5,
                                x: 0,
                                y: 3
                            )
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical)
                }


                VStack(spacing: 16) {

                    Divider()

                    HStack {

                        VStack(alignment: .leading, spacing: 4) {

                            Text("Total")
                                .font(.headline)

                            Text("\(carrinho.quantidadeItens) itens")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }

                        Spacer()

                        Text(
                            carrinho.total,
                            format: .currency(code: "BRL")
                        )
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.green)
                    }

                    Button {
                        pedidos.adicionarPedido(itens: carrinho.itens, total: carrinho.total)
                        carrinho.itens.removeAll()
                    } label: {

                        Text("Finalizar Compra")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 14)
                            )
                    }
                }
                .padding()
                .background(.background)
            }
        }
        .navigationTitle("Carrinho")
    }
}

