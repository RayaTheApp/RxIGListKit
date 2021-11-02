// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "RxIGListKit",
  platforms: [
    .iOS(.v13),
    .tvOS(.v13),
  ],
  products: [
    .library(name: "RxIGListKit", targets: ["RxIGListKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
    .package(url: "https://github.com/Instagram/IGListKit.git", .branch("main")),
  ],
  targets: [
    .target(
      name: "RxIGListKit",
      dependencies: [
        .product(name: "IGListSwiftKit", package: "IGListKit"),
        .product(name: "RxCocoa", package: "RxSwift"),
      ],
      path: "RxIGListKit/Classes"),
  ]
)
