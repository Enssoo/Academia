import Foundation

class Academia{
    let nome: String
    private (set) var alunosMatriculados: [String: Aluno] = [:]
    private (set) var instrutoresContratados: [String: Instrutor] = [:]
    private (set) var aparelhos: [Aparelho] = []
    private (set) var aulasDisponiveis: [Aula] = []


    init(nome: String) {
        self.nome = nome;
    }


    // Métodos de Gerenciamento
    func adicionarAparelho(_ aparelho: Aparelho){
        aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula){
        aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor){
        instrutoresContratados[instrutor.email] = instrutor
    }

    // Matrícula de Alunos
    func matricularAluno(_ aluno: Aluno){
        if alunosMatriculados[aluno.matricula] != nil {
            print("Erro: Aluno com matrícula \(aluno.matricula) já existe")
        } else {
            alunosMatriculados[aluno.matricula] = aluno
            print("Aluno inserido com sucesso")
        }        
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno
    }

    // Métodos de Consulta
    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        if let aluno = alunosMatriculados[matricula] {
            print("Aluno encontrado: \(aluno.getDescricao())")
            return aluno
    } else {
        print("Nenhum aluno encontrado com a matrícula \(matricula).")
        return nil
    }
}

    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        if alunosMatriculados.isEmpty{
            print("Nenhum aluno matriculado.")
        } else {
            let alunosOrdenados = alunosMatriculados.values.sorted { $0.nome < $1.nome }
            for aluno in alunosOrdenados {
                print(aluno.getDescricao())
            }
        }
        print("-------------------------------")
    }

    func listarAulas(){
        print("--- Lista de Aulas ---")
        if aulasDisponiveis.isEmpty{
            print("Nenhuma aula cadastrada.")
        } else {
            for aula in aulasDisponiveis {
                print(aula.getDescricao())
            }
        }
        print("-------------------------------")
    }
}