// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "error_handling",
	products: [
		.executable(name: "error_handling", targets: ["error_handling"]),
	],
	dependencies: [],
	targets: [
		.target(name: "error_handling", dependencies: [])
	]
)
