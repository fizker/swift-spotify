import CustomCodableMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct Album: Codable, Sendable {
	@CodableKey(name: "album_type")
	public let albumType: AlbumType

	@CodableKey(name: "total_tracks")
	public let totalTracks: Int

//	@CodableKey(name: "available_markets")
//	public let availableMarkets: Set<String>

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

	public let restrictions: Restrictions?
	public let type: `Type` = .album
	public let uri: String
	public let artists: [SimplifiedArtist]

	public enum AlbumType: String, Codable, Sendable {
		case album, compilation, single
	}

	public enum `Type`: String, Codable, Sendable {
		case album
	}
}
