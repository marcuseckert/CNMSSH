// swift-tools-version:4.0

import PackageDescription

// Compile with: swift build -Xlinker -lssh2 -Xlinker -L/usr/local/lib/

let package = Package(
    name: "CNMSSH",
    products: [
      .library(name: "CNMSSH", targets: ["CNMSSH"])
    ],
    dependencies: [
        .package(url: "https://github.com/marcuseckert/CSSH", from: .init(1, 0, 0))
    ],
    targets: [
        .target(name: "CNMSSH", dependencies: ["CSSH"])
    ]
)
