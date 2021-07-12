// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "generics",
	products: [
		.executable(name: "generics", targets: ["generics"]),
	],
	dependencies: [],
	targets: [
		.target(name: "generics", dependencies: [])
	]
)
