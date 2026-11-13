import ArgumentParser
import Foundation

@main
struct SwiftEnvCheck: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "swift-env-check",
        abstract: "Inspects your Apple Silicon and Swift developer environment."
    )

    @Flag(name: .shortAndLong, help: "Show detailed system architecture information.")
    var verbose = false

    func run() throws {
        let processInfo = ProcessInfo.processInfo
        print("OS Version: \(processInfo.operatingSystemVersionString)")
        print("Processor Count: \(processInfo.processorCount)")

        if verbose {
            print("Host Name: \(processInfo.hostName)")
            print("Active Memory: \(processInfo.physicalMemory / 1_073_741_824) GB")
        }
    }
}
