import CustomCodableMacro
import Foundation
import InitMacro

@CustomCodable
@Init
public struct Track: Codable, Sendable {
	public var id: String
	public var name: String
	public var href: String
	public var uri: String

	public var album: Album
	public var artists: [SimplifiedArtist]

	@CodableKey(name: "disc_number")
	public var discNumber: Int
	@CodableKey(name: "track_number")
	public var trackNumber: Int

	@CodableKey(name: "is_local")
	public var isLocal: Bool

//	@CodableKey(name: "available_markets")
//	public var availableMarkets: Set<String>

	@CodableKey(name: "duration_ms")
	public var durationInMilliseconds: Int
	public var explicit: Bool

	@CodableKey(name: "external_ids")
	public var externalIDs: ExternalIDs

	@CodableKey(name: "external_urls")
	public var externalURLs: ExternalURLs
	// These two are part of https://developer.spotify.com/documentation/web-api/concepts/track-relinking
	//public var is_playable: Bool
	//public var linked_from: Track
	public var restrictions: Restrictions?
	public var popularity: Int

	public var type: `Type` = .track

	public enum `Type`: String, Codable, Sendable {
		case track
	}
}
