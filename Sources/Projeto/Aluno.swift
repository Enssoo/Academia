import Foundation

enum NivelAluno{
    case iniciante
    case intermediario
    case avancado
}

class Aluno: Pessoa{
    var matricula: String
    var nivel: NivelAluno = NivelAluno.iniciante
    private (set) var plano: Plano

    init(nome: String, email: String, matricula: String, plano: Plano){
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return super.getDescricao() + " Matrícula: \(matricula) - Plano: \(plano) "
    }
}