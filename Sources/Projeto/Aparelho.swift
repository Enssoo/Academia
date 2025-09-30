import Foundation

class Aparelho: Manutencao {
    var nomeItem: String
    private(set) var dataUltimaManutencao: String

    init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
    }

    func realizarManutencao() -> Bool{
        dataUltimaManutencao = "30/08/2025"
        print("A data da ultima Manutenção foi: \(dataUltimaManutencao)")
        return true
    }
}