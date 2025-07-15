// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RxCoreData",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_12),
        .tvOS(.v9),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RxCoreData",
            targets: ["RxCoreData"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/ReactiveX/RxSwift.git",
            from: "6.0.0"
        )
    ],
    targets: [
        .target(
            name: "RxCoreData",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift")
            ],
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
) 