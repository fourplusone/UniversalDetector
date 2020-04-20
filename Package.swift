// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UniversalDetector",
    products: [
        .library(name: "UniversalDetector", targets: ["UniversalDetector"]),
    ],
    targets: [
        .target(
            name: "UniversalDetector",
            dependencies: ["universalchardet", "kludge"],
            path: ".",
            sources: ["UniversalDetector.m", "WrappedUniversalDetector.cpp"],
            publicHeadersPath: "include"
        ),
        .target(
            name: "kludge", path: "kludge", publicHeadersPath: "."
        ),
        .target(
            name: "universalchardet", dependencies: ["kludge"], path: "universalchardet/src/base", publicHeadersPath: "."
        ),
    ]
)

