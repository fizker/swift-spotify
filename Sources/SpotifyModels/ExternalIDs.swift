import InitMacro

@Init
public struct ExternalIDs: Codable, Sendable {
	public var isrc: String?
	public var ean: String?
	public var upc: String?
}
