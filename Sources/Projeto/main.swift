import Foundation

// 1. Inicialização do Sistema
let academia = Academia(nome: "Academia POO 360")

// 2. Criação dos Planos
let planoMensal = PlanoMensal()
let planoAnual = PlanoAnual()

// 3. Contratação de Instrutores
let instrutor1 = Instrutor(nome: "Claudio", email: "claudioM@gmail.com", especialidade: "Musculação")
let instrutor2 = Instrutor(nome: "Jamil", email: "jamil67@gmail.com", especialidade: "Musculação")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)

// 4. Matrícula de Alunos
let aluno1 = Aluno(nome: "Bianca", email: "BiancaM@gmail.com", matricula: "ACM01", plano: planoMensal) // Plano mensal
let aluno2 = Aluno(nome: "Larissa", email: "larissaM@gmail.com", matricula: "ACM02", plano: planoAnual) // Plano anual

academia.matricularAluno(aluno1)
academia.matricularAluno(aluno2)

// 5. Criação e Agendamento de Aulas
let aulaPersonal = AulaPersonal(nome: "Musculação - Leg day", instrutor: instrutor1, aluno:aluno2)
let aulaColetiva = AulaColetiva(nome: "Musculação - Membros superiores", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

// 6. Interação com a Aula Coletiva e Lógica de Negócio
// A.
aulaColetiva.inscrever(aluno: aluno2)
aulaColetiva.inscrever(aluno: aluno1)

// B.
let aluno3 = Aluno(nome: "Aquiles", email: "aquilesM@gmail.com", matricula: "ACM03", plano: planoAnual)
academia.matricularAluno(aluno3)

// C.
aulaColetiva.inscrever(aluno: aluno3)

// D.
let aluno4 = Aluno(nome: "Caio", email: "caioM@gmail.com", matricula: "ACM04", plano: planoMensal)
aulaColetiva.inscrever(aluno: aluno4) // Aula lotada, deve dar erro.

academia.listarAulas()
academia.listarAlunos()

// 7. Demonstração Prática de Polimorfismo com Aulas
var aulas: [Aula] = []
aulas.append(aulaPersonal)
aulas.append(aulaColetiva)

for aula in aulas {
    print(aula.getDescricao())
}

// 8. Demonstração Prática de Polimorfismo com Pessoas
var listaPessoas: [Pessoa] = []
listaPessoas.append(instrutor2)
listaPessoas.append(aluno1)

for pessoa in listaPessoas {
    print(pessoa.getDescricao())
}

// 9. Criação de um Relatório com Tuplas (Extension)
extension Academia {
    func gerarRelatorio() ->  (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int){
        return (totalAlunos : alunosMatriculados.count, totalInstrutores : instrutoresContratados.count, totalAulas : aulasDisponiveis.count)
    }
}

var relatorio = academia.gerarRelatorio()

print("\n--- Relatório da Academia ---")
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print("-----------------------------")