// swift-tools-version:4.0

import PackageDescription

// Compile with: swift build -Xlinker -lssh2 -Xlinker -L/usr/local/lib/

let package = Package(
    name: "CNMSSH",
    dependencies: [
        .Package(url: "https://github.com/marcuseckert/CSSH", majorVersion: 1)
    ]
)
