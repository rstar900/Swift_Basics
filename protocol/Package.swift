// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "protocol",
	products: [
		.executable(name: "protocol", targets: ["protocol"]),
	],
	dependencies: [],
	targets: [
		.target(name: "protocol", dependencies: [])
	]
)
