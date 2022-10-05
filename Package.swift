// swift-tools-version:5.2

import PackageDescription

// Compile with: swift build -Xlinker -lssh2 -Xlinker -L/usr/local/lib/

let package = Package(
    name: "CNMSSH",
    products: [
      .library(name: "CNMSSH", targets: ["CNMSSH"])
    ],
    targets: [
        .systemLibrary(
            name: "libssh2",
            pkgConfig: "libssh2"
        ),
        .target(name: "CNMSSH",
                dependencies: ["libssh2"])
    ]
)
