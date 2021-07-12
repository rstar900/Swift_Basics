// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "for_in_dict",
	products: [
		.executable(name: "for_in_dict", targets: ["for_in_dict"]),
	],
	dependencies: [],
	targets: [
		.target(name: "for_in_dict", dependencies: [])
	]
)
