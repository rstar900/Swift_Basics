// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "switch_case",
	products: [
		.executable(name: "switch_case", targets: ["switch_case"]),
	],
	dependencies: [],
	targets: [
		.target(name: "switch_case", dependencies: [])
	]
)
