// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DUI",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DUI",
            targets: ["DUI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DUI",
            dependencies: [])
    ]
)
