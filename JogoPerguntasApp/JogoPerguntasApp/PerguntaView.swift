//
//  Pergunta.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation

import SwiftUI




struct PerguntaView: View {
    let pergunta: Pergunta
    @Binding var opcaoSelecionada: Respostas?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(pergunta.enunciado)
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 8)
            
            ForEach(pergunta.opcoes) { opcao in
                Button(action: {
                    if opcaoSelecionada == nil {
                        opcaoSelecionada = opcao
                    }
                }) {
                    Text(opcao.texto)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(corDoBotao(opcao: opcao))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .disabled(opcaoSelecionada != nil)
            }
        }
        .animation(.easeInOut(duration: 0.3), value: opcaoSelecionada)
    }
    
    func corDoBotao(opcao: Respostas) -> Color {
        guard let selecionada = opcaoSelecionada else {
            return .blue
        }
        
        // Destaca a opção clicada (verde se acertou, vermelho se errou)
        if selecionada.id == opcao.id {
            return opcao.correta ? .green : .red
        }
        
        // Mostra a resposta certa sempre (mesmo se o usuário errou)
        if opcao.correta {
            return .green
        }
        
        return .gray.opacity(0.5)
    }
}




#Preview {
    PerguntaView(pergunta: Pergunta(
        enunciado: "O que é a JVM?",
        opcoes: [
            Respostas(texto: "Máquina Virtual Java", correta: true),
            Respostas(texto: "Java Visual Module", correta: false),
            Respostas(texto: "Um framework", correta: false)
        ]
    ),
                 opcaoSelecionada: .constant(nil)
    )
}
