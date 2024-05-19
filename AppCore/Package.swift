// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppCore",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppCore",
            targets: ["AppCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.7.0")),
        .package(url: "https://github.com/RxSwiftCommunity/Action.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.11.0"))
    ],
    targets: [
        .target(
            name: "AppCore",
            dependencies: [
                "RxSwift",
                "Action",
                "Kingfisher"
            ]
        ),
        .testTarget(
            name: "AppCoreTests",
            dependencies: ["AppCore"]
        ),
    ]
)
