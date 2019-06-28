// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Moya",
    platforms: [.iOS("10.0"), .macOS("10.10"), .tvOS("10.0"), .watchOS("3.0")],
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "ReactiveMoya", targets: ["ReactiveMoya"]),
        .library(name: "RxMoya", targets: ["RxMoya"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.8.2")),
        .package(url: "https://github.com/antitypical/Result.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", .upToNextMajor(from: ("5.0.0"))),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.0.0"))
    ],
    targets: [
         .target(
            name: "Moya",
            dependencies: [
                "Alamofire",
                "Result"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"]),
        .target(
            name: "ReactiveMoya",
            dependencies: [
                "Moya",
                "ReactiveSwift"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"]),
        .target(
            name: "RxMoya",
            dependencies: [
                "Moya",
                "RxSwift"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"])
    ]
)
