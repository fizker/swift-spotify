import InitMacro

@Init
public struct ExternalIDs: Codable {
	public let isrc: String?
	public let ean: String?
	public let upc: String?
}
