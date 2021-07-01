// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Greetings",
    platforms: [.macOS(SupportedPlatform.MacOSVersion.v11)],
    targets: [
        .systemLibrary(name: "libgreetings"),
        .target(name: "example", dependencies: ["libgreetings"])
    ]
)
