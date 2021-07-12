// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "for_in_simple",
	products: [
		.executable(name: "for_in_simple", targets: ["for_in_simple"]),
	],
	dependencies: [],
	targets: [
		.target(name: "for_in_simple", dependencies: [])
	]
)
