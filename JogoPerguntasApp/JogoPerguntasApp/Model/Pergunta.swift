//
//  Pergunta.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation


struct Pergunta: Identifiable, Hashable {
    var id = UUID()
    let enunciado: String
    var opcoes: [Respostas]
}
