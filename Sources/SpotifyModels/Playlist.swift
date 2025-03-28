import CustomCodableMacro
import InitMacro
import Foundation

@CustomCodable
@Init
public struct Playlist: Codable, Sendable {
	public let id: String
	public let name: String
	public let owner: User
	public let href: String
	public let uri: String

	/// Note: `description` is a restricted keyword in SwiftData.
	@CodableKey(name: "description")
	public let playlistDescription: String?

	public let images: [Image]
	public let collaborative: Bool

	@CodableKey(name: "external_urls")
	public let externalURLs: ExternalURLs

	public let followers: Followers

	@CodableKey(name: "public")
	public let isPublic: Bool

	@CodableKey(name: "snapshot_id")
	public let snapshotID: String

	public let tracks: Tracks
	public let type: `Type` = .playlist

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
		@Init
		public struct Item: Codable, Sendable {
			@CodableKey(name: "added_at")
			public let addedAt: String

			@CodableKey(name: "added_by")
			public let addedBy: User

			@CodableKey(name: "is_local")
			public let isLocal: Bool

			public let track: Track
		}
	}
}
