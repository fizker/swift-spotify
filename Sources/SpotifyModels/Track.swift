import CodingKeysMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct Track: Codable, Sendable {
	public let id: String
	public let name: String
	public let href: String
	public let uri: String

	public let album: Album
	public let artists: [SimplifiedArtist]

	@CodableKey(name: "disc_number")
	public let discNumber: Int
	@CodableKey(name: "track_number")
	public let trackNumber: Int

	@CodableKey(name: "is_local")
	public let isLocal: Bool

//	@CodableKey(name: "available_markets")
//	public let availableMarkets: Set<String>

	@CodableKey(name: "duration_ms")
	public let durationInMilliseconds: Int
	public let explicit: Bool

	@CodableKey(name: "external_ids")
	public let externalIDs: ExternalIDs

	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs
	// These two are part of https://developer.spotify.com/documentation/web-api/concepts/track-relinking
	//public let is_playable: Bool
	//public let linked_from: Track
	public let restrictions: Restrictions?
	public let popularity: Int

	public let type: `Type` = .track

	public enum `Type`: String, Codable, Sendable {
		case track
	}
}
