// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "InsteonHubClient",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_13)
  ],
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "InsteonHubClient",
      targets: ["InsteonHubClient"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(
      url: "https://github.com/brandtdaniels/RequestClient",
      from: "0.1.0"
    ),
    .package(
      url: "https://github.com/brandtdaniels/InsteonMessage",
      from: "0.1.2"
    ),
    .package(
      url: "https://github.com/brandtdaniels/InsteonSerialCommand",
      from: "0.1.3"
    )
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
      name: "InsteonHubClient",
      dependencies: ["RequestClient", "InsteonMessage", "InsteonSerialCommand"]),
    .testTarget(
      name: "InsteonHubClientTests",
      dependencies: ["InsteonHubClient"]),
  ]
)
