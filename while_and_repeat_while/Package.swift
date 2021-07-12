// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "while_and_repeat_while",
	products: [
		.executable(name: "while_and_repeat_while", targets: ["while_and_repeat_while"]),
	],
	dependencies: [],
	targets: [
		.target(name: "while_and_repeat_while", dependencies: [])
	]
)
