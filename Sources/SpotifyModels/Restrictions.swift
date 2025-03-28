import InitMacro

@Init
public struct Restrictions: Codable, Sendable {
	public var reason: Reason

	public enum Reason: String, Codable, Sendable {
		case market, product, explicit
	}
}
