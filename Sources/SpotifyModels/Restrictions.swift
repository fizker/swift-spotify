import InitMacro

@Init
public struct Restrictions: Codable, Sendable {
	// TODO: This should be an enum
	public let reason: String
}
