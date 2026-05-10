//
//  DescontoView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct PedidoView: View {

    @EnvironmentObject var pedidos: PedidoViewModel

    var body: some View {

        NavigationStack {

            VStack {

                if pedidos.pedidos.isEmpty {

                    Spacer()

                    VStack(spacing: 16) {

                        Image(systemName: "shippingbox")

                            .font(.system(size: 60))

                            .foregroundStyle(.gray)

                        Text("Nenhum pedido encontrado")

                            .font(.title3)

                            .fontWeight(.semibold)

                        Text("Os pedidos realizados aparecerão aqui")

                            .foregroundStyle(.secondary)

                    }

                    Spacer()

                } else {

                    ScrollView {

                        LazyVStack(spacing: 16) {

                            ForEach(pedidos.pedidos) { pedido in

                                VStack(alignment: .leading, spacing: 16) {

                                    headerPedido(pedido)

                                    Divider()

                                    itensPedido(pedido)

                                }

                                .padding()

                                .background(.background)

                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
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
                }
            }

            .navigationTitle("Pedidos")
        }
    }
}

extension PedidoView {

    @ViewBuilder
    func headerPedido(_ pedido: Pedido) -> some View {

        HStack {

            VStack(alignment: .leading, spacing: 4) {

                Text("Pedido")

                    .font(.headline)

                Text(
                    pedido.dataCriacao,
                    format: .dateTime
                        .day()
                        .month()
                        .year()
                        .hour()
                        .minute()
                )

                .font(.subheadline)

                .foregroundStyle(.secondary)
            }

            Spacer()

            Text(
                pedido.total,
                format: .currency(code: "BRL")
            )

            .font(.headline)

            .fontWeight(.bold)

            .foregroundStyle(.green)
        }
    }

    @ViewBuilder
    func itensPedido(_ pedido: Pedido) -> some View {

        VStack(spacing: 12) {

            ForEach(pedido.itens) { item in

                HStack(spacing: 12) {

                    ZStack {

                        RoundedRectangle(cornerRadius: 12)

                            .fill(Color.blue.opacity(0.12))

                            .frame(width: 50, height: 50)

                        Image(systemName: item.produto.imagem)

                            .foregroundStyle(.blue)
                    }

                    VStack(alignment: .leading, spacing: 4) {

                        Text(item.produto.titulo)

                            .fontWeight(.semibold)

                        Text("\(item.quantidade)x item(ns)")

                            .font(.caption)

                            .foregroundStyle(.secondary)
                    }

                    Spacer()

                    Text(
                        item.produto.preco * Double(item.quantidade),
                        format: .currency(code: "BRL")
                    )

                    .fontWeight(.bold)
                }
            }
        }
    }
}

