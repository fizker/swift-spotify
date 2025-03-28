import CustomCodableMacro
import InitMacro

@CustomCodable
@Init
public struct SimplifiedArtist: Codable, Sendable {
	public let id: String
	public let name: String
	public let href: String
	public let uri: String

	@CodableKey(name: "external_urls")
	public let ExternalURLs: ExternalURLs

	public let type: `Type` = .artist

	public enum `Type`: String, Codable, Sendable {
		case artist
	}
}
