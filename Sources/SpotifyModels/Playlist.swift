import CustomCodableMacro
import InitMacro
import Foundation

@CustomCodable
@Init
public struct Playlist: Codable, Sendable {
	public var id: String
	public var name: String
	public var owner: User
	public var href: String
	public var uri: String
	public var description: String?
	public var images: [Image]
	public var collaborative: Bool

	@CodableKey(name: "external_urls")
	public var externalURLs: ExternalURLs

	public var followers: Followers

	@CodableKey(name: "public")
	public var isPublic: Bool

	@CodableKey(name: "snapshot_id")
	public var snapshotID: String

	public var tracks: Tracks
	public var type: `Type` = .playlist

	public enum `Type`: String, Codable, Sendable {
		case playlist
	}

	@Init
	public struct Tracks: Codable, Sendable {
		public var href: URL
		public var limit: Int
		public var next: URL?
		public var offset: Int
		public var previous: URL?
		public var total: Int
		public var items: [Item]

		@CustomCodable
		@Init
		public struct Item: Codable, Sendable {
			@CodableKey(name: "added_at")
			public var addedAt: String

			@CodableKey(name: "added_by")
			public var addedBy: User

			@CodableKey(name: "is_local")
			public var isLocal: Bool

			public var track: Track
		}
	}
}
