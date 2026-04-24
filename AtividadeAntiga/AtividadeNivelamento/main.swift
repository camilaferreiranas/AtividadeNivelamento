//
//  main.swift
//  AtividadeNivelamento
//
//  Created by Camila Ferreira  on 11/04/26.
//

import Foundation



class Main: AcoesContato {

    

    var agenda: [Contato] = []

    

    func iniciarAgenda() {

        iniciarMensagens()

        var opcao: Int = 0

        opcao = Int(readLine() ?? "2") ?? 0

        repeat {

            switch opcao {

            case 1:
                
                print("Cadastrar")
               cadastro()
                

            case 2:
                
                print("Listar")
                lista()

            case 3:

                print("Alterar")
               
                altera()

            case 4:
                
                print("Remover")

                remove()

            default:

                print("Opção inválida")

            }
            
            
            print("\n")
            iniciarMensagens()
            print("5 - Sair")
            opcao = Int(readLine() ?? "0") ?? 0

        } while (opcao >= 1 && opcao <= 4)
       

        print("Encerrando a agenda")
        

    }

    

    

    func iniciarMensagens() {

        print("**** Bem vindo(a) a sua agenda de contatos! ****")

        print("Escolha uma das opções:")

        print("1 - Cadastrar | 2 - Listar | 3 - Alterar | 4 - Remover")

    }

    

    func cadastro() {
        var nome: String = ""
            repeat {
                print("Nome: ")
                nome = readLine()?.trimmingCharacters(in: .whitespaces) ?? ""
                if nome.isEmpty { print(" Nome não pode ser vazio.") }
                if agenda.contains(where: {
                    $0.nome == nome
                } ) {
                    print("Nome duplicado")
                }
            } while nome.isEmpty || agenda.contains(where: {$0.nome == nome})

            // Idade
            var idade: Int = 0
            repeat {
                print("Idade: ")
                let input = readLine()?.trimmingCharacters(in: .whitespaces) ?? ""
                idade = Int(input) ?? 0
                if idade <= 0 { print("Idade inválida. Digite um número maior que zero.") }
            } while idade <= 0

            // Telefone
            var telefone: String = ""
            repeat {
                print("Telefone: ")
                telefone = readLine()?.trimmingCharacters(in: .whitespaces) ?? ""
                if telefone.isEmpty { print(" Telefone não pode ser vazio.") }
            } while telefone.isEmpty

            // E-mail
            var email: String = ""
            repeat {
                print("E-mail: ")
                email = readLine()?.trimmingCharacters(in: .whitespaces) ?? ""
                if email.isEmpty { print("E-mail não pode ser vazio.") }
            } while email.isEmpty

        let contatoNovo = Contato(_nome: nome, _idade: idade, _telefone: telefone, _email: email)

        agenda.append(contatoNovo)

    }

    

    func lista()  {

        if agenda.isEmpty {
           print("Não há nenhum número cadastrado na agenda")
        } else {
            for contato in agenda  {

                print("Nome: \(contato.nome) - Idade: \(contato.idade) - Telefone: \(contato.telefone) - Email: \(contato.email)")

            }
        }
       

       

    }

    

    func altera() {

        print("Digite o nome do contato que irá alterar")
        let contato: String = readLine() ?? " "
        if agenda.contains(where: {
            $0.nome.lowercased() == contato.lowercased()
        }) {
            print("Nome: ")
            let nome = readLine() ?? ""
            print("Idade: ")
            let idade = Int( readLine() ?? "") ?? 0
            print("Telefone ")
            let telefone = readLine() ?? ""
            
            print("E-mail")
            let email = readLine() ?? ""
            
            let novoContato = Contato(_nome: nome, _idade: idade, _telefone: telefone, _email: email)
            if let indice = agenda.firstIndex(where: {$0.nome.lowercased() == contato.lowercased()}) {
                agenda[indice] = novoContato
            }
        } else {
            print("Contato não encontrado")
        }

        
    }

    

    func remove() {

        print("Digite o nome do contato a ser excluído")
        let contato: String = readLine() ?? ""
        if let indice = agenda.firstIndex(where: {
            $0.nome.lowercased() == contato.lowercased()
        }) {
            agenda.remove(at: indice)
        } else {
            print("Contato não encontrado")
        }

    }
    
    
   
    

}

let app = Main()
app.iniciarAgenda()

