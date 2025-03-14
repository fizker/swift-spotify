// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "swift-spotify",
	products: [
		.library(
			name: "swift-spotify",
			targets: ["SpotifyAPI"]
		),
	],
	targets: [
		.target(
			name: "SpotifyAPI",
			dependencies: [
				"Models",
			]
		),
		.target(
			name: "Models"
		),
		.testTarget(
			name: "SpotifyAPITests",
			dependencies: ["SpotifyAPI"]
		),
	]
)
