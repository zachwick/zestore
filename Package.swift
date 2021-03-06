// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "zestore",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "3.1.0")),
        .package(url: "https://github.com/vapor/leaf.git", .upToNextMinor(from: "3.0.0")),
        .package(url: "https://github.com/vapor/url-encoded-form.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "Leaf", "URLEncodedForm"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

