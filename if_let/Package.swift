// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "if_let",
	products: [
		.executable(name: "if_let", targets: ["if_let"]),
	],
	dependencies: [],
	targets: [
		.target(name: "if_let", dependencies: [])
	]
)
