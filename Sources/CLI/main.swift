import Foundation
import SpotifyAPI

let process = ProcessInfo.processInfo

guard process.arguments.count > 3
else {
	print("Usage: \(process.arguments[0]) <client ID> <client secret> <playlist ID>")
	exit(1)
}

let clientID = process.arguments[1]
let clientSecret = process.arguments[2]
let playlistID = process.arguments[3]

print("""
clientID = \(clientID)
clientSecret = \(clientSecret)
playlistID = \(playlistID)
""")

let client = SpotifyClient(clientID: clientID, clientSecret: clientSecret)
let playlist = try await client.playlist(id: playlistID)

print("Playlist:\n\(playlist)")
