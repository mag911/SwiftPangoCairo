// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PangoCairo",
    products: [
        .library(name: "PangoCairo", targets: ["PangoCairo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mag911/SwiftCairo.git", .branch("master")),
        .package(url: "https://github.com/mag911/SwiftPango.git", .branch("master"))
    ],
    targets: [
        .target(name: "PangoCairo", dependencies: ["Cairo", "Pango"]),
        .testTarget(name: "PangoCairoTests", dependencies: ["PangoCairo"]),
    ]
)
