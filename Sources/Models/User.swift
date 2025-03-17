import CodingKeysMacro
import InitMacro

@CustomCodable
@Init
public struct User: Codable, Sendable {
	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs
	public let followers: Followers
	public let href: String
	public let id: String
	public let type: `Type`
	public let uri: String

	@CodableKey(name: "display_name")
	public let displayName: String

	public enum `Type`: String, Codable, Sendable {
		case user
	}
}
