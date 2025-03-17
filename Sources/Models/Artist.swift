import CodingKeysMacro
import InitMacro

@CustomCodable
@Init
public struct Artist: Codable, Sendable {
	@CodableKey(name: "external_urls")
	public let ExternalURLs: ExternalURLs
	public let href: String
	public let id: String
	public let name: String
	public let type: `Type`
	public let uri: String

	public enum `Type`: String, Codable, Sendable {
		case artist
	}
}
