import InitMacro

@Init
public struct Followers: Codable {
	public let href: String
	public let total: Int
}
