import CodingKeysMacro

@CustomCodable
struct Artist: Codable {
	@CodableKey(name: "external_urls")
	let ExternalURLs: ExternalURLs
	let href: String
	let id: String
	let name: String
	let type: `Type`
	let uri: String

	enum `Type`: String, Codable {
		case artist
	}
}
