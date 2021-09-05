// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "spm",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.5.0"),
    ],
    targets: [
        .target(
            name: "spm",
            dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
			]),
    ]
)
