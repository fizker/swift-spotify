import CodingKeysMacro
import Foundation

@CustomCodable
struct Album: Codable {
	// TODO: This should be an enum
	@CodableKey(name: "album_type")
	let albumType: String //"compilation"

	@CodableKey(name: "total_tracks")
	let totalTracks: Int

	@CodableKey(name: "available_markets")
	let availableMarkets: [String]

	@CodableKey(name: "external_urls")
	let externalURLs: ExternalURLs

	let href: URL
	let id: String
	let images: [Image]
	let name: String

	@CodableKey(name: "release_date")
	let releaseDate: String

	@CodableKey(name: "release_date_precision")
	let releaseDatePrecision: String

	let restrictions: Restrictions
	let type: `Type`
	let uri: String
	let artists: [Artist]

	enum `Type`: String, Codable {
		case album
	}
}
