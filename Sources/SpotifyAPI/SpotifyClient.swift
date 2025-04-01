import Foundation
import HTTPTypes
import HTTPTypesFoundation
import InitMacro
import OAuth2Models
import SpotifyModels
import URLEncoded

let authURL = URL(string: "https://accounts.spotify.com/api/token")!
let apiURL = URL(string: "https://api.spotify.com/v1/")!

public actor SpotifyClient {
	let clientID: String
	let clientSecret: String

	public init(clientID: String, clientSecret: String) {
		self.clientID = clientID
		self.clientSecret = clientSecret
	}

	public func playlist(id: String) async throws -> Playlist {
		let data = try await data(for: "playlists", id)
		return try decoder.decode(Playlist.self, from: data)
	}

	let decoder = SpotifyJSONDecoder()

	func data(for components: String...) async throws -> Data {
		let url = components.reduce(apiURL) { $0.appending(component: $1) }
		let accessToken = try await accessToken()
		let request = HTTPRequest(
			url: url,
			headerFields: [.authorization: "\(accessToken.type.rawValue) \(accessToken.accessToken)"]
		)

		return try await execute(request)
	}

	func accessToken() async throws -> AccessTokenResponse {
		let request = HTTPRequest(
			method: .post,
			url: authURL,
			headerFields: [.contentType: "application/x-www-form-urlencoded"]
		)
		let credentials = ClientCredentialsAccessTokenRequest(clientID: clientID, clientSecret: clientSecret)
		let encoder = URLEncoder()

		let data = try await execute(request, data: try encoder.encode(credentials).data(using: .utf8))

		return try decoder.decode(AccessTokenResponse.self, from: data)
	}

	func execute(_ request: HTTPRequest, data: Data? = nil) async throws -> Data {
		let session = URLSession.shared
		let (data, response) = if let data {
			try await session.upload(for: request, from: data)
		} else {
			try await session.data(for: request)
		}

		guard response.status == .ok
		else {
			let error = (try? decoder.decode(ErrorResponse.self, from: data)) ?? .init(
				status: response.status.code,
				message: String(data: data, encoding: .utf8) ?? data.base64EncodedString()
			)
			let type: Error.`Type` = switch response.status {
			case .unauthorized: .invalidCredentials
			default: .unknownError
			}

			throw Error(type, error)
		}
		return data
	}

	@Init
	public struct Error: Swift.Error {
		public let type: `Type`
		public let response: SpotifyModels.ErrorResponse

		public init(_ type: `Type`, _ response: SpotifyModels.ErrorResponse) {
			self.type = type
			self.response = response
		}

		public enum `Type`: Sendable {
			case unknownError
			case invalidCredentials
			case invalidResponse
		}
	}
}

extension HTTPResponse.Status {
	public var isSuccess: Bool { is2xx }
	public var is2xx: Bool {
		code >= 200 && 300 < code
	}
}
