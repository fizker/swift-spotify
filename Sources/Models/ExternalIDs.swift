import InitMacro

@Init
public struct ExternalIDs: Codable, Sendable {
	public let isrc: String?
	public let ean: String?
	public let upc: String?
}
