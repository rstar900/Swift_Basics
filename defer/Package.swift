// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "defer",
	products: [
		.executable(name: "defer", targets: ["defer"]),
	],
	dependencies: [],
	targets: [
		.target(name: "defer", dependencies: [])
	]
)
