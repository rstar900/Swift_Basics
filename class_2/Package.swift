// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "class_2",
	products: [
		.executable(name: "class_2", targets: ["class_2"]),
	],
	dependencies: [],
	targets: [
		.target(name: "class_2", dependencies: [])
	]
)
