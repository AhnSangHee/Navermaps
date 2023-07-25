// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMaps-SPM",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "NaverMaps-SPM",
            targets: ["NaverMaps-SPM"]),
    ],
    dependencies: [],
    targets: [
      .binaryTarget(
        name: "NMapsMap",
        path: "./Frameworks/NMapsMap.xcframework"
      ),
      .target(
        name: "NaverMaps-SPM",
        dependencies: ["NMapsMap"])
    ]
)
