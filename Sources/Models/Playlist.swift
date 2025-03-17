import CodingKeysMacro
import InitMacro
import Foundation

@CustomCodable
@Init
public struct Playlist: Codable, Sendable {
	public let collaborative: Bool
	public let description: String

	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs

	public let followers: Followers

	public let href: String
	public let id: String

	public let images: [Image]
	public let name: String

	public let owner: User

	@CodableKey(name: "public")
	public let isPublic: Bool

	@CodableKey(name: "snapshot_id")
	public let snapshotID: String

	public let tracks: Tracks
	public let type: `Type`
	public let uri: String

	public enum `Type`: String, Codable, Sendable {
		case playlist
	}

	@Init
	public struct Tracks: Codable, Sendable {
		public let href: URL
		public let limit: Int
		public let next: URL?
		public let offset: Int
		public let previous: URL?
		public let total: Int
		public let items: [Item]

		@CustomCodable
		public struct Item: Codable, Sendable {
			@CodableKey(name: "added_at")
			public let addedAt: String

			@CodableKey(name: "added_by")
			public let addedBy: User

			@CodableKey(name: "is_local")
			public let isLocal: Bool

			public let track: Track

			@CustomCodable
			@Init
			public struct Track: Codable, Sendable {
				public let album: Album
				public let artists: [Artist]
				public let available_markets: [String]

				@CodableKey(name: "disc_number")
				public let discNumber: Int

				@CodableKey(name: "duration_ms")
				public let durationInMilliseconds: Int
				public let explicit: Bool

				@CodableKey(name: "external_ids")
				public let externalIDs: ExternalIDs

				@CodableKey(name: "external_urls")
				public let externalURLs: ExternalURLs
				public let href: String
				public let id: String
				// These two are part of https://developer.spotify.com/documentation/web-api/concepts/track-relinking
				//public let is_playable: Bool
				//public let linked_from: Track
				public let restrictions: Restrictions
				public let name: String
				public let popularity: Int

				@CodableKey(name: "preview_url")
				public let previewURL: URL

				@CodableKey(name: "track_number")
				public let trackNumber: Int

				public let type: `Type`
				public let uri: String

				@CodableKey(name: "is_local")
				public let isLocal: Bool

				public enum `Type`: String, Codable, Sendable {
					case track
				}
			}
		}
	}
}
