import ArgumentParser
import Foundation

// maybe combine `app` and `binary`? `spm new app` and `spm new binary` sound nice
enum Command: String, CaseIterable {
	case app
	case binary
	case build
	case projectGeneration
	case run
	case update

	init?(rawValue: String) {
		guard let result = Command.allCases.first(where: {
			$0.aliases.contains(rawValue.lowercased())
		}) else {
			return nil
		}

		self = result
	}

	// an extraordinarily silly way of doing things that probably won't last
	func calls() -> [String] {
		switch self {
		case .app: return ["swift package init"]
		case .binary: return ["swift package init --type=executable"]
		case .update: return ["swift package update"]
		case .build: return ["swift build -c release"]
		case .projectGeneration: return ["swift package generate-xcodeproj", "xed ."]
		case .run: return ["swift run"]
		}
	}

	var aliases: [String] {
		switch self {
		case .app: return ["app", "ios"]
		case .binary: return ["binary", "cli"]
		case .update: return ["download", "fetch", "refresh", "update"]
		case .build: return ["build", "rebuild"]
		case .projectGeneration: return ["edit", "generate", "ide", "project", "xcode"]
		case .run: return ["go", "run"]
		}
	}

	var help: String {
		let allAliases = aliases.map { "'\($0)'" }
		let firstAlias = allAliases.first ?? "no first"
		let remainingAliases = allAliases.dropFirst()
		let separator = Locale.current.groupingSeparator ?? ","
		return firstAlias + " (aka: " + remainingAliases.joined(separator: "\(separator) ") + ")"
	}

	static func help() -> String {
		"Command list: \n" + Command.allCases.map { "\t\($0.help)" }.joined(separator: "\n")
	}
}

struct SPM: ParsableCommand {
	@Argument(help: "The command to run. \(Command.help())")
	var command: String

	mutating func run() throws {
		guard let command = Command(rawValue: command) else {
			return
		}

		for runCommand in command.calls() {
			Process.launchedProcess(
				launchPath: "/usr/bin/env",
				arguments: runCommand.components(separatedBy: " ")
			).waitUntilExit()
		}
	}
}

SPM.main()
