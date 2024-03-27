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
        .package(url: "https://source.skip.tools/skip.git", from: "0.8.25"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "0.5.19"),
        .package(url: "https://source.skip.tools/skip-av.git", from: "0.0.2"),
        .package(url: "https://source.skip.tools/skip-sql.git", from: "0.6.2"),
        .package(url: "https://source.skip.tools/skip-script.git", from: "0.4.1"),
        .package(url: "https://source.skip.tools/skip-ffi.git", from: "0.3.2"),
        .package(url: "https://source.skip.tools/skip-motion.git", from: "0.2.0"),
        .package(url: "https://source.skip.tools/skip-device.git", from: "0.1.1"),
        .package(url: "https://source.skip.tools/skip-data.git", from: "0.1.1"),
        .package(url: "https://source.skip.tools/skip-notify.git", from: "0.1.1"),
//        .package(url: "https://source.skip.tools/skip-mark.git", from: "0.0.0"),
        .package(url: "https://source.skip.tools/skip-salt.git", from: "0.0.1"),
        .package(url: "https://source.skip.tools/skip-proto.git", from: "0.1.0"),
        .package(url: "https://source.skip.tools/skip-vault.git", from: "0.1.2"),
        .package(url: "https://source.skip.tools/skip-web.git", from: "0.1.0"),
        .package(url: "https://source.skip.tools/skip-xml.git", from: "0.1.2"),
        .package(url: "https://source.skip.tools/skip-yaml.git", from: "0.1.2"),
        .package(url: "https://source.skip.tools/skip-zip.git", from: "0.3.0"),

        .package(url: "https://source.skip.tools/skipapp-hello.git", from: "0.0.8"),
        .package(url: "https://source.skip.tools/skipapp-showcase.git", from: "0.3.4"),
        .package(url: "https://source.skip.tools/skipapp-weather.git", from: "0.4.3"),
        .package(url: "https://source.skip.tools/skipapp-lottiedemo.git", from: "0.0.5"),
        .package(url: "https://source.skip.tools/skipapp-databake.git", from: "0.0.7"),
    ],
    targets: [
        .target(name: "EveryThing", dependencies: [
            .product(name: "SkipUI", package: "skip-ui"),
            .product(name: "SkipAV", package: "skip-av"),
            .product(name: "SkipSQL", package: "skip-sql"),
            .product(name: "SkipScript", package: "skip-script"),
            .product(name: "SkipFFI", package: "skip-ffi"),
            .product(name: "SkipMotion", package: "skip-motion"),
            .product(name: "SkipDevice", package: "skip-device"),
            .product(name: "SkipData", package: "skip-data"),
            .product(name: "SkipNotify", package: "skip-notify"),
//            .product(name: "SkipMark", package: "skip-mark"),
            .product(name: "SkipSalt", package: "skip-salt"),
            .product(name: "SkipProto", package: "skip-proto"),
            .product(name: "SkipVault", package: "skip-vault"),
            .product(name: "SkipWeb", package: "skip-web"),
            .product(name: "SkipXML", package: "skip-xml"),
            .product(name: "SkipYAML", package: "skip-yaml"),
            .product(name: "SkipZip", package: "skip-zip"),

            .product(name: "HelloSkipApp", package: "skipapp-hello"),
            .product(name: "ShowcaseApp", package: "skipapp-showcase"),
            .product(name: "SkipWeatherApp", package: "skipapp-weather"),
            .product(name: "LottieDemoApp", package: "skipapp-lottiedemo"),
            .product(name: "DataBakeApp", package: "skipapp-databake"),
        ], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
