// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "extension",
	products: [
		.executable(name: "extension", targets: ["extension"]),
	],
	dependencies: [],
	targets: [
		.target(name: "extension", dependencies: [])
	]
)
