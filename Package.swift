// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "swift-spotify",
	platforms: [
		.iOS(.v13),
		.macOS(.v13),
	],
	products: [
		.library(
			name: "swift-spotify",
			targets: ["SpotifyAPI"]
		),
		.executable(name: "spotify", targets: ["CLI"]),
	],
	dependencies: [
		.package(url: "https://github.com/fizker/swift-form-urlencoded.git", branch: "main"),
		.package(url: "https://github.com/fizker/swift-macro-coding-keys", branch: "main"),
		.package(url: "https://github.com/fizker/swift-macro-init.git", branch: "main"),
		.package(url: "https://github.com/fizker/swift-oauth2-models.git", .upToNextMinor(from: "0.4.0"))
	],
	targets: [
		.executableTarget(
			name: "CLI",
			dependencies: [
				"SpotifyAPI",
			]
		),
		.target(
			name: "SpotifyAPI",
			dependencies: [
				"Models",
				.product(name: "URLEncoded", package: "swift-form-urlencoded"),
				.product(name: "OAuth2Models", package: "swift-oauth2-models"),
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
			name: "ModelsTests",
			dependencies: ["Models"]
		),
		.testTarget(
			name: "SpotifyAPITests",
			dependencies: ["SpotifyAPI"]
		),
	]
)
