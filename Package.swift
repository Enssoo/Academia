// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Academia",
    targets: [
        .executableTarget(
            name: "Projeto"
        )
    ]
)


//para rodar cada aula, no terminal: swift run <nome da pasta da aula> - Exemplo: swift run Aula_1