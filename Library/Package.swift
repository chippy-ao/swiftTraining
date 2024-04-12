// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Library",
  // MEMO: [Library]以外で公開したい場合に定義する
  products: [
    .library(
      name: "AppFeature",
      targets: ["AppFeature"])
  ],
  // MEMO: [Library]内で使用する外部パッケージがある場合に定義する
  dependencies: [
    //    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.9.1"),
    //    .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.2.0"),
    //    .package(url: "https://github.com/zunda-pixel/LicenseProvider", from: "1.1.1"),
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
      dependencies: ["Common", "Model"]),
    .target(
      name: "PokeSearchFeature",
      dependencies: [
        "Common",
        "Designsystem",
        "Domain",
        "Model",
        // MEMO: 外部パッケージを依存する場合、以下のように定義する
        //        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
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
