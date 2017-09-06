// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Attabench",
    products: [
        .library(name: "Benchmarking", targets: ["Benchmarking", "BenchmarkIPC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/OptionParser", .branch("master")),
    ],
    targets: [
        .target(name: "BenchmarkIPC", path: "BenchmarkIPC"),
        .target(name: "Benchmarking", dependencies: ["OptionParser", "BenchmarkIPC"], path: "Benchmarking"),
    ],
    swiftLanguageVersions: [4]
)
