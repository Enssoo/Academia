import Foundation

class Instrutor: Pessoa {
    var especialidade: String

    init(nome: nome, email: email, especialidade: especialidade){
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return super.getDescricao() + " Especialidade: \(especialidade)"
    }
}