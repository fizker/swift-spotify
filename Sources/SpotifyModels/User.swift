import CodingKeysMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct User: Codable, Sendable {
	public let id: String

	@CodableKey(name: "display_name")
	public let displayName: String?

	public let uri: URL
	public let href: String

	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs
	public let followers: Followers?
	public let type: `Type` = .user

	public enum `Type`: String, Codable, Sendable {
		case user
	}
}
