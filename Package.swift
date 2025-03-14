// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "swift-spotify",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
	],
	products: [
		.library(
			name: "swift-spotify",
			targets: ["SpotifyAPI"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/fizker/swift-macro-coding-keys", branch: "main"),
		.package(url: "https://github.com/fizker/swift-macro-init.git", branch: "main"),
	],
	targets: [
		.target(
			name: "SpotifyAPI",
			dependencies: [
				"Models",
			]
		),
		.target(
			name: "Models",
			dependencies: [
				.product(name: "CodingKeysMacro", package: "swift-macro-coding-keys"),
				.product(name: "InitMacro", package: "swift-macro-init"),
			]
		),
		.testTarget(
			name: "SpotifyAPITests",
			dependencies: ["SpotifyAPI"]
		),
	]
)
