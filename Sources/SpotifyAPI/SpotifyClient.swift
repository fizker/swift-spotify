import Foundation
import Models
import OAuth2Models
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

	let decoder = JSONDecoder()

	func data(for components: String...) async throws -> Data {
		let url = components.reduce(apiURL) { $0.appending(component: $1) }
		var request = URLRequest(url: url)
		request.httpMethod = "GET"
		let accessToken = try await accessToken()
		request.setValue("\(accessToken.type) \(accessToken.accessToken)", forHTTPHeaderField: "authentication")

		return try await execute(request)
	}

	func accessToken() async throws -> AccessTokenResponse {
		var request = URLRequest(url: authURL)
		request.httpMethod = "POST"
		request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "content-type")
		let credentials = ClientCredentialsAccessTokenRequest(clientID: clientID, clientSecret: clientSecret)
		let encoder = URLEncoder()
		request.httpBody = try encoder.encode(credentials).data(using: .utf8)

		let data = try await execute(request)

		return try decoder.decode(AccessTokenResponse.self, from: data)
	}

	func execute(_ request: URLRequest) async throws -> Data {
		let (data, response) = try await URLSession.shared.data(for: request)

		guard let response = response as? HTTPURLResponse
		else { throw Error.invalidResponse }

		switch response.statusCode {
		case 200:
			return data
		case 401:
			throw Error.invalidCredentials
		default:
			throw Error.unknownError(
				code: response.statusCode,
				message: String(data: data, encoding: .utf8) ?? data.base64EncodedString()
			)
		}
	}

	public enum Error: Swift.Error {
		case unknownError(code: Int, message: String)
		case invalidCredentials
		case invalidResponse
	}
}
