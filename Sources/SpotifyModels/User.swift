import CustomCodableMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct User: Codable, Sendable {
	public var id: String

	@CodableKey(name: "display_name")
	public var displayName: String?

	public var uri: URL
	public var href: String

	@CodableKey(name: "external_urls")
	public var externalURLs: ExternalURLs
	public var followers: Followers?
	public var type: `Type` = .user

	public enum `Type`: String, Codable, Sendable {
		case user
	}
}
