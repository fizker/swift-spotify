import InitMacro

@Init
public struct Followers: Codable, Sendable {
	public var href: String?
	public var total: Int
}
