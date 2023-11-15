// swift-tools-version: 5.9
// This is free software: you can redistribute and/or modify it
// under the terms of the GNU Lesser General Public License 3.0
// as published by the Free Software Foundation https://fsf.org

import PackageDescription

let package = Package(
    name: "skipapp-everything",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
    products: [
        .library(name: "EveryThingApp", type: .dynamic, targets: ["EveryThing"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "0.7.16"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skipapp-hello.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skipapp-showcase.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skipapp-weather.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skipapp-lottiedemo.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skipapp-databake.git", from: "0.0.0"),
    ],
    targets: [
        .target(name: "EveryThing", dependencies: [
            .product(name: "SkipUI", package: "skip-ui"),
            .product(name: "HelloSkipApp", package: "skipapp-hello"),
            .product(name: "ShowcaseApp", package: "skipapp-showcase"),
            .product(name: "SkipWeatherApp", package: "skipapp-weather"),
            .product(name: "LottieDemoApp", package: "skipapp-lottiedemo"),
            .product(name: "DataBakeApp", package: "skipapp-databake"),
        ], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
