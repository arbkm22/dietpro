// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DietPro",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "DietPro",
            targets: ["DietPro"]
        )
    ],
    targets: [
        .target(
            name: "DietPro",
            path: ".",
            sources: [
                "DietProApp.swift",
                "Models",
                "Views"
            ]
        )
    ]
)
