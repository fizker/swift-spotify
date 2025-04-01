import Foundation

/// Creates a ``Foundation/JSONDecoder`` that is configured to handle the Spotify models.
public func SpotifyJSONDecoder() -> JSONDecoder {
	let decoder = JSONDecoder()
	decoder.dateDecodingStrategy = .iso8601
	return decoder
}

/// Creates a ``Foundation/JSONEncoder`` that is configured to handle the Spotify models.
public func SpotifyJSONEncoder() -> JSONEncoder {
	let encoder = JSONEncoder()
	encoder.dateEncodingStrategy = .iso8601
	return encoder
}
