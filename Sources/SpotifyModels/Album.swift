import CustomCodableMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct Album: Codable, Sendable {
	@CodableKey(name: "album_type")
	public var albumType: AlbumType

	@CodableKey(name: "total_tracks")
	public var totalTracks: Int

//	@CodableKey(name: "available_markets")
//	public var availableMarkets: Set<String>

	@CodableKey(name: "external_urls")
	public var externalURLs: ExternalURLs

	public var href: URL
	public var id: String
	public var images: [Image]
	public var name: String

	@CodableKey(name: "release_date")
	public var releaseDate: String

	@CodableKey(name: "release_date_precision")
	public var releaseDatePrecision: String

	public var restrictions: Restrictions?
	public var type: `Type` = .album
	public var uri: String
	public var artists: [SimplifiedArtist]

	public enum AlbumType: String, Codable, Sendable {
		case album, compilation, single
	}

	public enum `Type`: String, Codable, Sendable {
		case album
	}
}
