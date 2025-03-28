import CustomCodableMacro
import InitMacro

@CustomCodable
@Init
public struct SimplifiedArtist: Codable, Sendable {
	public var id: String
	public var name: String
	public var href: String
	public var uri: String

	@CodableKey(name: "external_urls")
	public var ExternalURLs: ExternalURLs

	public var type: `Type` = .artist

	public enum `Type`: String, Codable, Sendable {
		case artist
	}
}
