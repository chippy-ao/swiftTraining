// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Library",
  platforms: [.iOS(.v17), .macOS(.v14)],
  // MEMO: [Library]以外で公開したい場合に定義する
  products: [
    .library(
      name: "AppFeature",
      targets: ["AppFeature"])
  ],
  // MEMO: [Library]内で使用する外部パッケージがある場合に定義する
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.3.7"),
    .package(url: "https://github.com/apple/swift-http-types.git", from: "1.3.0"),
  ],
  // MEMO: 各パッケージ同士の依存関係を定義する
  targets: [
    .target(
      name: "AppFeature",
      dependencies: [
        "PokeSearchFeature"
      ]),
    .target(
      name: "Common"),
    .target(
      name: "Data",
      dependencies: ["Common", "Model", "Network"]),
    .target(
      name: "Designsystem",
      dependencies: ["Common"]),
    .target(
      name: "Domain",
      dependencies: ["Common", "Data", "Model"]),
    .target(
      name: "Model",
      dependencies: ["Common"]),
    .target(
      name: "Network",
      dependencies: [
        "Common",
        "Model",
        .product(name: "Dependencies", package: "swift-dependencies"),
        .product(name: "DependenciesMacros", package: "swift-dependencies"),
      ]),
    .target(
      name: "NetworkHttp",
      dependencies: [
        "Common",
        "Network",
        .product(name: "Dependencies", package: "swift-dependencies"),
        .product(name: "HTTPTypes", package: "swift-http-types"),
        .product(name: "HTTPTypesFoundation", package: "swift-http-types"),
      ]),
    .target(
      name: "PokeSearchFeature",
      dependencies: [
        "Common",
        "Designsystem",
        "Domain",
        "Model",
      ]),
    .testTarget(
      name: "DomainTests",
      dependencies: ["Domain"]),
    .testTarget(
      name: "DataTests",
      dependencies: ["Data"]),
    .testTarget(
      name: "NetworkTests",
      dependencies: ["Network"]),
  ]
)
