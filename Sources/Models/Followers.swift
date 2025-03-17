import InitMacro

@Init
public struct Followers: Codable, Sendable {
	public let href: String
	public let total: Int
}
