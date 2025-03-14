import CodingKeysMacro

@CustomCodable
struct User: Codable {
	@CodableKey(name: "external_urls")
	let externalURLs: ExternalURLs
	let followers: Followers
	let href: String
	let id: String
	let type: `Type`
	let uri: String

	@CodableKey(name: "display_name")
	let displayName: String

	enum `Type`: String, Codable {
		case user
	}
}
