// swift-tools-version: 5.8
// swiftlint:disable explicit_acl explicit_top_level_acl

import PackageDescription

let swiftSettings: [SwiftSetting] = [
  .enableUpcomingFeature("BareSlashRegexLiterals"),
  .enableUpcomingFeature("ConciseMagicFile"),
  .enableUpcomingFeature("ExistentialAny"),
  .enableUpcomingFeature("ForwardTrailingClosures"),
  .enableUpcomingFeature("ImplicitOpenExistentials"),
  .enableUpcomingFeature("StrictConcurrency")
]

let package = Package(
  name: "RouteGroups",
  platforms: [
              .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13)
  ],
  products: [
    .library(
      name: "RouteGroups",
      targets: ["RouteGroups"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0")
  ],
  targets: [
    .target(
      name: "RouteGroups",
      dependencies: [.product(name: "Vapor", package: "vapor")],
      swiftSettings: swiftSettings
    ),
    .testTarget(
      name: "RouteGroupsTests",
      dependencies: ["RouteGroups"]
    )
  ]
)
