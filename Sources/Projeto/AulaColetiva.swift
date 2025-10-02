import Foundation 

class AulaColetiva: Aula{
    private (set) var alunosInscritos: [String: Aluno] = [:]
    var capacidadeMaxima: Int

    override init(nome: String, instrutor: Instrutor){
        self.capacidadeMaxima = 25
        super.init(nome: nome, instrutor: instrutor)
    }

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int){
        self.capacidadeMaxima = capacidadeMaxima
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if alunosInscritos.count >= capacidadeMaxima{
            print("Situação da Aula: lotada")
            return false
        }

        if alunosInscritos[aluno.matricula] != nil{
            print("\(aluno.nome) já está inscrito!")
            return false
        }

        alunosInscritos[aluno.matricula] = aluno
        print("Aluno adicionado com sucesso!")
        return true
    }

    override func getDescricao() -> String{
        return super.getDescricao() + " - Números de vagas ocupadas: \(alunosInscritos.count) - Capacidade Máxima da Turma: \(capacidadeMaxima)"
    }
}