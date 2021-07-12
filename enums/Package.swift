// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "enums",
	products: [
		.executable(name: "enums", targets: ["enums"]),
	],
	dependencies: [],
	targets: [
		.target(name: "enums", dependencies: [])
	]
)
