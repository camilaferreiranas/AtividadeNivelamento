//
//  ProdutoViewModel.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//
import Foundation
import SwiftUI
internal import Combine

class ProdutoViewModel: ObservableObject {

    @Published var produtos: [Produto] = [

        Produto(
            titulo: "MacBook Pro M4",
            descricao: "Notebook Apple para desenvolvimento e produtividade.",
            preco: 14999.90,
            imagem: "laptopcomputer"
        ),

        Produto(
            titulo: "iPhone 17",
            descricao: "Smartphone Apple com câmera avançada.",
            preco: 7999.90,
            imagem: "iphone"
        ),

        Produto(
            titulo: "Teclado Mecânico",
            descricao: "Teclado mecânico RGB para programação.",
            preco: 599.90,
            imagem: "keyboard"
        ),

        Produto(
            titulo: "Mouse Gamer",
            descricao: "Mouse ergonômico de alta precisão.",
            preco: 349.90,
            imagem: "computer.mouse"
        ),

        Produto(
            titulo: "Monitor UltraWide",
            descricao: "Monitor 34 polegadas para multitarefa.",
            preco: 2499.90,
            imagem: "display"
        ),

        Produto(
            titulo: "AirPods Pro",
            descricao: "Fones com cancelamento de ruído.",
            preco: 1899.90,
            imagem: "airpodspro"
        ),

        Produto(
            titulo: "Controle Arcade",
            descricao: "Controle retrô para jogos arcade.",
            preco: 350.00,
            imagem: "arcade.stick.console.fill"
        )
    ]
}
