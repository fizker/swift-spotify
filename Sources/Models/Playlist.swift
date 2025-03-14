import CodingKeysMacro
import Foundation

@CustomCodable
struct Playlist: Codable {
	let collaborative: Bool
	let description: String

	@CodableKey(name: "external_urls")
	let externalURLs: ExternalURLs

	let followers: Followers

	let href: String
	let id: String

	let images: [Image]
	let name: String

	let owner: User

	@CodableKey(name: "public")
	let isPublic: Bool

	@CodableKey(name: "snapshot_id")
	let snapshotID: String

	let tracks: Tracks
	let type: `Type`
	let uri: String

	enum `Type`: String, Codable {
		case playlist
	}

	struct Tracks: Codable {
		let href: URL
		let limit: Int
		let next: URL?
		let offset: Int
		let previous: URL?
		let total: Int
		let items: [Item]

		@CustomCodable
		struct Item: Codable {
			@CodableKey(name: "added_at")
			let addedAt: String

			@CodableKey(name: "added_by")
			let addedBy: User

			@CodableKey(name: "is_local")
			let isLocal: Bool

			let track: Track

			@CustomCodable
			struct Track: Codable {
				let album: Album
				let artists: [Artist]
				let available_markets: [String]

				@CodableKey(name: "disc_number")
				let discNumber: Int

				@CodableKey(name: "duration_ms")
				let durationInMilliseconds: Int
				let explicit: Bool

				@CodableKey(name: "external_ids")
				let externalIDs: ExternalIDs

				@CodableKey(name: "external_urls")
				let externalURLs: ExternalURLs
				let href: String
				let id: String
				// These two are part of https://developer.spotify.com/documentation/web-api/concepts/track-relinking
				//let is_playable: Bool
				//let linked_from: Track
				let restrictions: Restrictions
				let name: String
				let popularity: Int

				@CodableKey(name: "preview_url")
				let previewURL: URL

				@CodableKey(name: "track_number")
				let trackNumber: Int

				let type: `Type`
				let uri: String

				@CodableKey(name: "is_local")
				let isLocal: Bool

				enum `Type`: String, Codable {
					case track
				}
			}
		}
	}
}
