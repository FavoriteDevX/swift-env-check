<p align="center">
  <img width="180" height="180" alt="image" src="https://github.com/user-attachments/assets/28a40d57-4ada-4fbd-8e57-3697ab3e15d1" />
</p>

<h1 align="center">swift-env-check</h1>

<p align="center">
  A fast, lightweight command-line tool built with Swift to inspect Apple developer environment configurations and hardware metrics.
</p>

---

## Overview

`swift-env-check` is an open-source CLI utility designed for Apple ecosystem developers to quickly verify OS versions, active CPU cores, host details, and memory allocation directly from the terminal.

## Features

- **System Inspection:** Detects macOS version and active processor count.
- **Verbose Diagnostics:** Outputs detailed host names and physical memory metrics.
- **Native Performance:** Built in pure Swift using Apple's official `swift-argument-parser`.
- **Automated CI:** Tested and compiled natively on macOS via GitHub Actions.

## Requirements

- macOS 13.0 (Ventura) or later
- Swift 5.9 or later
- Xcode 15+ (optional, for IDE development)

## Installation

### Build from Source

Clone the repository and compile the release binary using Swift Package Manager:

```bash
git clone https://github.com
cd swift-env-check
swift build -c release
```

To install it globally on your system:

```bash
cp -f .build/release/swift-env-check /usr/local/bin/swift-env-check
```

## Usage

Run a basic environment check:

```bash
swift-env-check
```

Run with the `--verbose` flag for detailed hardware metrics:

```bash
swift-env-check --verbose
```

### Example Output

```text
OS Version: Version 15.0 (Build 24A335)
Processor Count: 10
Host Name: MacBook-Pro.local
Active Memory: 16 GB
```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request to help improve this tool.
