// swift-tools-version:4.0

import PackageDescription

// Compile with: swift build -Xlinker -lssh2 -Xlinker -L/usr/local/lib/

let package = Package(
    name: "CNMSSH",
    dependencies: [
        .Package(url: "https://github.com/jakeheis/CSSH", majorVersion: 1)
    ]
)
