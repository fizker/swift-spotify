import InitMacro

@Init
public struct Restrictions: Codable, Sendable {
	public let reason: Reason

	public enum Reason: String, Codable, Sendable {
		case market, product, explicit
	}
}
