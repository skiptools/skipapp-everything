// swift-tools-version: 5.9
// SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
import PackageDescription

let package = Package(
    name: "skipapp-everything",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
    products: [
        .library(name: "EveryThingApp", type: .dynamic, targets: ["EveryThing"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.0.0"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "1.0.0"),
        .package(url: "https://source.skip.tools/skip-ffi.git", from: "1.0.0"),
        .package(url: "https://source.skip.tools/skip-av.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-sql.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-script.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-motion.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-device.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-data.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-notify.git", "0.0.0"..<"2.0.0"),
//        .package(url: "https://source.skip.tools/skip-mark.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-salt.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-proto.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-vault.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-web.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-xml.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-yaml.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skip-zip.git", "0.0.0"..<"2.0.0"),

        .package(url: "https://source.skip.tools/skipapp-hello.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skipapp-showcase.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skipapp-weather.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skipapp-lottiedemo.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://source.skip.tools/skipapp-databake.git", "0.0.0"..<"2.0.0"),
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
