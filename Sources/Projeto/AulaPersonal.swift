import Foundation

class AulaPersonal: Aula{
    var aluno: Aluno

    init(nome: String, instrutor: Instrutor, aluno: Aluno){
        self.aluno = aluno
        super.init(nome: nome, instrutor: instrutor)
    }

    override func getDescricao() -> String {
        return super.getDescrição() + " - Nome aluno: \(aluno.nome)"
    }
}