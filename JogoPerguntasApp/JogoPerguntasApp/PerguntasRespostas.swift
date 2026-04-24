//
//  PerguntasRespostas.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation

func perguntasPara(tema: Temas) -> [Pergunta] {
    switch tema.titulo {
        
    case "Java":
        return [
            Pergunta(
                enunciado: "O que é a JVM?",
                opcoes: [
                    Respostas(texto: "Máquina Virtual Java que executa bytecode", correta: true),
                    Respostas(texto: "Java Visual Module", correta: false),
                    Respostas(texto: "Um framework web", correta: false),
                    Respostas(texto: "Um compilador de C++", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual palavra-chave declara uma constante em Java?",
                opcoes: [
                    Respostas(texto: "final", correta: true),
                    Respostas(texto: "const", correta: false),
                    Respostas(texto: "let", correta: false),
                    Respostas(texto: "static", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "O que é o Garbage Collector em Java?",
                opcoes: [
                    Respostas(texto: "Um mecanismo que libera memória automaticamente", correta: true),
                    Respostas(texto: "Uma IDE de desenvolvimento", correta: false),
                    Respostas(texto: "Um framework de testes", correta: false),
                    Respostas(texto: "Um compilador just-in-time", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual é a classe pai de todas as classes em Java?",
                opcoes: [
                    Respostas(texto: "Object", correta: true),
                    Respostas(texto: "Class", correta: false),
                    Respostas(texto: "Main", correta: false),
                    Respostas(texto: "Base", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual coleção não permite elementos duplicados?",
                opcoes: [
                    Respostas(texto: "Set", correta: true),
                    Respostas(texto: "List", correta: false),
                    Respostas(texto: "ArrayList", correta: false),
                    Respostas(texto: "LinkedList", correta: false)
                ]
            )
        ]
        
    case "Golang":
        return [
            Pergunta(
                enunciado: "Qual empresa criou a linguagem Go?",
                opcoes: [
                    Respostas(texto: "Google", correta: true),
                    Respostas(texto: "Microsoft", correta: false),
                    Respostas(texto: "Meta", correta: false),
                    Respostas(texto: "Amazon", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual palavra-chave inicia uma goroutine?",
                opcoes: [
                    Respostas(texto: "go", correta: true),
                    Respostas(texto: "async", correta: false),
                    Respostas(texto: "thread", correta: false),
                    Respostas(texto: "spawn", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Como é feita a comunicação entre goroutines em Go?",
                opcoes: [
                    Respostas(texto: "Channels", correta: true),
                    Respostas(texto: "Mutex apenas", correta: false),
                    Respostas(texto: "Variáveis globais", correta: false),
                    Respostas(texto: "Sockets", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Go possui herança de classes?",
                opcoes: [
                    Respostas(texto: "Não, usa composição via structs e interfaces", correta: true),
                    Respostas(texto: "Sim, com a palavra extends", correta: false),
                    Respostas(texto: "Sim, com a palavra inherits", correta: false),
                    Respostas(texto: "Sim, mas só de uma classe", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual comando compila e executa um arquivo Go?",
                opcoes: [
                    Respostas(texto: "go run", correta: true),
                    Respostas(texto: "go exec", correta: false),
                    Respostas(texto: "go start", correta: false),
                    Respostas(texto: "go compile", correta: false)
                ]
            )
        ]
        
    case "Clojure":
        return [
            Pergunta(
                enunciado: "Clojure é uma linguagem baseada em qual paradigma?",
                opcoes: [
                    Respostas(texto: "Funcional", correta: true),
                    Respostas(texto: "Orientada a objetos pura", correta: false),
                    Respostas(texto: "Procedural", correta: false),
                    Respostas(texto: "Lógica", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Clojure é um dialeto de qual linguagem?",
                opcoes: [
                    Respostas(texto: "Lisp", correta: true),
                    Respostas(texto: "Haskell", correta: false),
                    Respostas(texto: "Erlang", correta: false),
                    Respostas(texto: "Scala", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Em qual plataforma Clojure roda por padrão?",
                opcoes: [
                    Respostas(texto: "JVM", correta: true),
                    Respostas(texto: ".NET CLR", correta: false),
                    Respostas(texto: "Node.js apenas", correta: false),
                    Respostas(texto: "Python VM", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Estruturas de dados em Clojure são, por padrão:",
                opcoes: [
                    Respostas(texto: "Imutáveis", correta: true),
                    Respostas(texto: "Mutáveis", correta: false),
                    Respostas(texto: "Sempre ordenadas", correta: false),
                    Respostas(texto: "Somente numéricas", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Como se define uma função em Clojure?",
                opcoes: [
                    Respostas(texto: "(defn nome [args] corpo)", correta: true),
                    Respostas(texto: "function nome(args) { corpo }", correta: false),
                    Respostas(texto: "def nome(args):", correta: false),
                    Respostas(texto: "func nome(args) corpo", correta: false)
                ]
            )
        ]
        
    case "Typescript":
        return [
            Pergunta(
                enunciado: "Qual a principal vantagem do TypeScript sobre o JavaScript?",
                opcoes: [
                    Respostas(texto: "Tipagem estática", correta: true),
                    Respostas(texto: "Executa mais rápido no navegador", correta: false),
                    Respostas(texto: "Dispensa o uso de Node.js", correta: false),
                    Respostas(texto: "Substitui o HTML", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual empresa desenvolveu o TypeScript?",
                opcoes: [
                    Respostas(texto: "Microsoft", correta: true),
                    Respostas(texto: "Google", correta: false),
                    Respostas(texto: "Meta", correta: false),
                    Respostas(texto: "Mozilla", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual extensão padrão de arquivos TypeScript?",
                opcoes: [
                    Respostas(texto: ".ts", correta: true),
                    Respostas(texto: ".tsc", correta: false),
                    Respostas(texto: ".tsx apenas", correta: false),
                    Respostas(texto: ".typ", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "O que significa o tipo 'any' em TypeScript?",
                opcoes: [
                    Respostas(texto: "Qualquer tipo, desativando a checagem", correta: true),
                    Respostas(texto: "Apenas números", correta: false),
                    Respostas(texto: "Apenas strings", correta: false),
                    Respostas(texto: "Tipo nulo obrigatório", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Como o TypeScript é executado no navegador?",
                opcoes: [
                    Respostas(texto: "É compilado para JavaScript", correta: true),
                    Respostas(texto: "Os navegadores executam .ts nativamente", correta: false),
                    Respostas(texto: "Requer um plugin do Chrome", correta: false),
                    Respostas(texto: "Via WebAssembly obrigatoriamente", correta: false)
                ]
            )
        ]
        
    case "SQL":
        return [
            Pergunta(
                enunciado: "Qual comando SQL recupera dados de uma tabela?",
                opcoes: [
                    Respostas(texto: "SELECT", correta: true),
                    Respostas(texto: "GET", correta: false),
                    Respostas(texto: "FETCH", correta: false),
                    Respostas(texto: "RETRIEVE", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual comando remove permanentemente uma tabela?",
                opcoes: [
                    Respostas(texto: "DROP TABLE", correta: true),
                    Respostas(texto: "DELETE TABLE", correta: false),
                    Respostas(texto: "REMOVE TABLE", correta: false),
                    Respostas(texto: "CLEAR TABLE", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual cláusula agrupa resultados por uma coluna?",
                opcoes: [
                    Respostas(texto: "GROUP BY", correta: true),
                    Respostas(texto: "ORDER BY", correta: false),
                    Respostas(texto: "CLUSTER BY", correta: false),
                    Respostas(texto: "AGGREGATE BY", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "Qual tipo de JOIN retorna apenas linhas com correspondência em ambas as tabelas?",
                opcoes: [
                    Respostas(texto: "INNER JOIN", correta: true),
                    Respostas(texto: "LEFT JOIN", correta: false),
                    Respostas(texto: "RIGHT JOIN", correta: false),
                    Respostas(texto: "FULL OUTER JOIN", correta: false)
                ]
            ),
            Pergunta(
                enunciado: "O que é uma PRIMARY KEY?",
                opcoes: [
                    Respostas(texto: "Identificador único de cada linha da tabela", correta: true),
                    Respostas(texto: "Senha do banco de dados", correta: false),
                    Respostas(texto: "Primeira coluna da tabela sempre", correta: false),
                    Respostas(texto: "Coluna com mais registros", correta: false)
                ]
            )
        ]
        
    default:
        return []
    }
}
