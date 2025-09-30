import Foundation

protocol Manutencao {
    var nomeItem: String
    var dataUltimaManutencao: String

    func realizarManutencao() -> Bool
}