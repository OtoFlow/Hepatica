// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hepatica",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "Hepatica", targets: ["Hepatica"]),
    ],
    targets: [
        .target(
            name: "Hepatica",
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        ),
    ]
)
