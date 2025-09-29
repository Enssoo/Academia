import Foundation

class Pessoa{
    var nome: String 
    var email: String

    init(nome: String, email: String){ 
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String {
        return "Nome: \(nome) - Email: \(email)"
    }
}