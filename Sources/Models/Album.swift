import CodingKeysMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct Album: Codable {
	// TODO: This should be an enum
	@CodableKey(name: "album_type")
	public let albumType: String //"compilation"

	@CodableKey(name: "total_tracks")
	public let totalTracks: Int

	@CodableKey(name: "available_markets")
	public let availableMarkets: [String]

	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs

	public let href: URL
	public let id: String
	public let images: [Image]
	public let name: String

	@CodableKey(name: "release_date")
	public let releaseDate: String

	@CodableKey(name: "release_date_precision")
	public let releaseDatePrecision: String

	public let restrictions: Restrictions
	public let type: `Type`
	public let uri: String
	public let artists: [Artist]

	public enum `Type`: String, Codable {
		case album
	}
}
