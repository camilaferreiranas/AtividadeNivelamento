//
//  Quiz.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation

import SwiftUI


struct QuizView: View {
    let tema: Temas
    let perguntas: [Pergunta]
    
    @State private var indiceAtual = 0
    @State private var acertos = 0
    @State private var opcaoSelecionada: Respostas?
    @State private var quizFinalizado = false
    
    var body: some View {
        VStack(spacing: 20) {
            if quizFinalizado {
                ResultadoView(
                    acertos: acertos,
                    total: perguntas.count,
                    reiniciar: reiniciar
                )
            } else if perguntas.isEmpty {
                Text("Nenhuma pergunta disponível")
                    .foregroundStyle(.secondary)
            } else {
                // Contador de progresso
                Text("Pergunta \(indiceAtual + 1) de \(perguntas.count)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                // Pergunta atual
                PerguntaView(
                    pergunta: perguntas[indiceAtual],
                    opcaoSelecionada: $opcaoSelecionada
                )
                
                Spacer()
                
                // Botão Próxima (aparece só depois de responder)
                if opcaoSelecionada != nil {
                    Button(action: proximaPergunta) {
                        Text(indiceAtual == perguntas.count - 1 ? "Ver resultado" : "Próxima")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(.horizontal)
                }
            }
        }
        .padding()
        .navigationTitle(tema.titulo)
    }
    
    func proximaPergunta() {
        // Contabiliza acerto
        if let selecionada = opcaoSelecionada, selecionada.correta {
            acertos += 1
        }
        
        // Avança ou finaliza
        if indiceAtual < perguntas.count - 1 {
            indiceAtual += 1
            opcaoSelecionada = nil
        } else {
            quizFinalizado = true
        }
    }
    
    func reiniciar() {
        indiceAtual = 0
        acertos = 0
        opcaoSelecionada = nil
        quizFinalizado = false
    }
}
