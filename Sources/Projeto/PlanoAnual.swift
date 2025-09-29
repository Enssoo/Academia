import Foundation

class PlanoAnual: Plano{

    init(nome: String){
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
        //resultado do custo total de 12 meses (a R$ 120,00/mês) com um desconto de 20% aplicado, dividido por 12.
        return (((120.0 * 12) * 0.8)/12)
    }
}