# Rust in Swift Pakcage Manager example

## How to build

### Build rust to dynamic library:

```bash
cd shared
cargo build --release
```

Then you can find libgreetings.dylib in `shared/target/release`, Move it to `swift/Sources/libgreetings`.

### Build Swift example:

1. With commond line

```bash
cd swift
swift build -Xlinker -L./Sources/libgreetings # just build
swift run -Xlinker -L./Sources/libgreetings # build and run
```

2. With Xcode
   Open `swift/Greetings.xcodeproj`.

3. Regenerate Xcode Project
   The folling command generate xcodeproj by the config file `swift/greetings.xcconfig`

```bash
swift package generate-xcodeproj --xcconfig-overrides ./greetings.xcconfig
```
