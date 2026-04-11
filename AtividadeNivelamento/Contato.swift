//
//  Contato.swift
//  AtividadeNivelamento
//
//  Created by Camila Ferreira  on 11/04/26.
//



class Contato {

    private var _nome: String

    private var _idade: Int

    private var _telefone: String

    private var _email: String

    init(_nome: String, _idade: Int, _telefone: String, _email: String) {
        self._nome = _nome
        self._idade = _idade
        self._telefone = _telefone
        self._email = _email
    }

    var nome: String {

        get {

            return _nome

        }

        set {

            _nome = newValue

        }

    }

    

    var idade: Int  {

        get {

            return _idade

        }

        set {

            _idade = newValue

        }

    }

    

    var telefone: String {

        get {

            return _telefone

        }

        set {

            _telefone = newValue

        }

    }

    

    var email: String {

        get {

            return _email

        }

        set {

            _email = newValue

        }

    }

    

}
