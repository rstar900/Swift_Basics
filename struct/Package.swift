// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "struct",
	products: [
		.executable(name: "struct", targets: ["struct"]),
	],
	dependencies: [],
	targets: [
		.target(name: "struct", dependencies: [])
	]
)
