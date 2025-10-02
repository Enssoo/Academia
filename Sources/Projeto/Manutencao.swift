import Foundation

protocol Manutencao {
    var nomeItem: String { get }
    var dataUltimaManutencao: String { get }

    func realizarManutencao() -> Bool
}