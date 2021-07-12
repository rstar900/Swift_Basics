// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "closures",
	products: [
		.executable(name: "closures", targets: ["closures"]),
	],
	dependencies: [],
	targets: [
		.target(name: "closures", dependencies: [])
	]
)
