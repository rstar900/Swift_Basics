// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "class_1",
	products: [
		.executable(name: "class_1", targets: ["class_1"]),
	],
	dependencies: [],
	targets: [
		.target(name: "class_1", dependencies: [])
	]
)
