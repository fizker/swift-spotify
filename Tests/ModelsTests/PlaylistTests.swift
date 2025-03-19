import Foundation
import Testing
import Models

struct PlaylistTests {
	@Test
	func decode__realResponse__decodesCorrectly() async throws {
		let json = """
		{
		  "collaborative": false,
		  "description": "",
		  "external_urls": {
		    "spotify": "https://open.spotify.com/playlist/0MQgLjWTwO5v0WvTFnuCpC"
		  },
		  "followers": {
		    "href": null,
		    "total": 0
		  },
		  "href": "https://api.spotify.com/v1/playlists/0MQgLjWTwO5v0WvTFnuCpC?locale=en-US%2Cen%3Bq%3D0.9",
		  "id": "0MQgLjWTwO5v0WvTFnuCpC",
		  "images": [
		    {
		      "height": 640,
		      "url": "https://mosaic.scdn.co/640/ab67616d00001e020c5cfe215fff3787b6afd944ab67616d00001e02403883d3f1c68fd93a7a43ddab67616d00001e0261960a03dec06479a8c9a8c3ab67616d00001e02bac02e3d8797e2ca6b78ef0f",
		      "width": 640
		    },
		    {
		      "height": 300,
		      "url": "https://mosaic.scdn.co/300/ab67616d00001e020c5cfe215fff3787b6afd944ab67616d00001e02403883d3f1c68fd93a7a43ddab67616d00001e0261960a03dec06479a8c9a8c3ab67616d00001e02bac02e3d8797e2ca6b78ef0f",
		      "width": 300
		    },
		    {
		      "height": 60,
		      "url": "https://mosaic.scdn.co/60/ab67616d00001e020c5cfe215fff3787b6afd944ab67616d00001e02403883d3f1c68fd93a7a43ddab67616d00001e0261960a03dec06479a8c9a8c3ab67616d00001e02bac02e3d8797e2ca6b78ef0f",
		      "width": 60
		    }
		  ],
		  "name": "Lightning round (220-260bpm)",
		  "owner": {
		    "display_name": "Allan Schmidt",
		    "external_urls": {
		      "spotify": "https://open.spotify.com/user/113210559"
		    },
		    "href": "https://api.spotify.com/v1/users/113210559",
		    "id": "113210559",
		    "type": "user",
		    "uri": "spotify:user:113210559"
		  },
		  "primary_color": null,
		  "public": true,
		  "snapshot_id": "AAAADlIwCQAxKsNuzG6a7B5i7UW+biw2",
		  "tracks": {
		    "href": "https://api.spotify.com/v1/playlists/0MQgLjWTwO5v0WvTFnuCpC/tracks?offset=0&limit=100&locale=en-US,en;q%3D0.9",
		    "items": [
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "BE", "TJ", "VE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "AT", "BE", "BO", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/69wXSERTEElMjgoGrQBQ1P",
		            "id": "69wXSERTEElMjgoGrQBQ1P",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b2730c5cfe215fff3787b6afd944",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e020c5cfe215fff3787b6afd944",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d000048510c5cfe215fff3787b6afd944",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Ternaire Madness",
		            "release_date": "1997",
		            "release_date_precision": "year",
		            "uri": "spotify:album:69wXSERTEElMjgoGrQBQ1P",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/3OLp4KhWh6toFAwiPWxbxX"
		                },
		                "href": "https://api.spotify.com/v1/artists/3OLp4KhWh6toFAwiPWxbxX",
		                "id": "3OLp4KhWh6toFAwiPWxbxX",
		                "name": "Greg Zlap",
		                "type": "artist",
		                "uri": "spotify:artist:3OLp4KhWh6toFAwiPWxbxX"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/69wXSERTEElMjgoGrQBQ1P"
		            },
		            "total_tracks": 12
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/3OLp4KhWh6toFAwiPWxbxX"
		              },
		              "href": "https://api.spotify.com/v1/artists/3OLp4KhWh6toFAwiPWxbxX",
		              "id": "3OLp4KhWh6toFAwiPWxbxX",
		              "name": "Greg Zlap",
		              "type": "artist",
		              "uri": "spotify:artist:3OLp4KhWh6toFAwiPWxbxX"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 10,
		          "duration_ms": 155493,
		          "external_ids": {
		            "isrc": "FR6V90000010"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/2u9pyRfvSCSCDFBX76sAO8"
		          },
		          "href": "https://api.spotify.com/v1/tracks/2u9pyRfvSCSCDFBX76sAO8",
		          "id": "2u9pyRfvSCSCDFBX76sAO8",
		          "name": "Blues Bend Boogie",
		          "popularity": 0,
		          "uri": "spotify:track:2u9pyRfvSCSCDFBX76sAO8",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "BE", "BO", "IQ", "LY", "TJ", "VE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "AT", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/4m0tTmOODI4Is44HefPOYk",
		            "id": "4m0tTmOODI4Is44HefPOYk",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b27361960a03dec06479a8c9a8c3",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e0261960a03dec06479a8c9a8c3",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000485161960a03dec06479a8c9a8c3",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Nu Funk",
		            "release_date": "2017-11-13",
		            "release_date_precision": "day",
		            "uri": "spotify:album:4m0tTmOODI4Is44HefPOYk",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/1e16kiJQtCTveTl7TQnkFN"
		                },
		                "href": "https://api.spotify.com/v1/artists/1e16kiJQtCTveTl7TQnkFN",
		                "id": "1e16kiJQtCTveTl7TQnkFN",
		                "name": "Scary Pockets",
		                "type": "artist",
		                "uri": "spotify:artist:1e16kiJQtCTveTl7TQnkFN"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/4m0tTmOODI4Is44HefPOYk"
		            },
		            "total_tracks": 10
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/1e16kiJQtCTveTl7TQnkFN"
		              },
		              "href": "https://api.spotify.com/v1/artists/1e16kiJQtCTveTl7TQnkFN",
		              "id": "1e16kiJQtCTveTl7TQnkFN",
		              "name": "Scary Pockets",
		              "type": "artist",
		              "uri": "spotify:artist:1e16kiJQtCTveTl7TQnkFN"
		            },
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/2gPkc3gmbre4I06b74i7Ot"
		              },
		              "href": "https://api.spotify.com/v1/artists/2gPkc3gmbre4I06b74i7Ot",
		              "id": "2gPkc3gmbre4I06b74i7Ot",
		              "name": "George Krikes",
		              "type": "artist",
		              "uri": "spotify:artist:2gPkc3gmbre4I06b74i7Ot"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 10,
		          "duration_ms": 158000,
		          "external_ids": {
		            "isrc": "QZANL1743815"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/0sdQ5hPULJilp0gpAXGq8E"
		          },
		          "href": "https://api.spotify.com/v1/tracks/0sdQ5hPULJilp0gpAXGq8E",
		          "id": "0sdQ5hPULJilp0gpAXGq8E",
		          "name": "Rocky Raccoon",
		          "popularity": 40,
		          "uri": "spotify:track:0sdQ5hPULJilp0gpAXGq8E",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "BE", "BO", "LY", "TJ", "VE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "AT", "IQ", "LY", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/5K9F7sCQHmgHLg839uDnON",
		            "id": "5K9F7sCQHmgHLg839uDnON",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b273bac02e3d8797e2ca6b78ef0f",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e02bac02e3d8797e2ca6b78ef0f",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00004851bac02e3d8797e2ca6b78ef0f",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Matchbox",
		            "release_date": "1979",
		            "release_date_precision": "year",
		            "uri": "spotify:album:5K9F7sCQHmgHLg839uDnON",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/1TZLeOYelnAiEkOJnofWrj"
		                },
		                "href": "https://api.spotify.com/v1/artists/1TZLeOYelnAiEkOJnofWrj",
		                "id": "1TZLeOYelnAiEkOJnofWrj",
		                "name": "Matchbox",
		                "type": "artist",
		                "uri": "spotify:artist:1TZLeOYelnAiEkOJnofWrj"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/5K9F7sCQHmgHLg839uDnON"
		            },
		            "total_tracks": 16
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/1TZLeOYelnAiEkOJnofWrj"
		              },
		              "href": "https://api.spotify.com/v1/artists/1TZLeOYelnAiEkOJnofWrj",
		              "id": "1TZLeOYelnAiEkOJnofWrj",
		              "name": "Matchbox",
		              "type": "artist",
		              "uri": "spotify:artist:1TZLeOYelnAiEkOJnofWrj"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 2,
		          "duration_ms": 174840,
		          "external_ids": {
		            "isrc": "GBAHS0500648"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/500WtS57lfUD6mmjqS1Dmf"
		          },
		          "href": "https://api.spotify.com/v1/tracks/500WtS57lfUD6mmjqS1Dmf",
		          "id": "500WtS57lfUD6mmjqS1Dmf",
		          "name": "Buzz Buzz a Diddle It",
		          "popularity": 34,
		          "uri": "spotify:track:500WtS57lfUD6mmjqS1Dmf",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "BE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "LY", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "compilation",
		            "href": "https://api.spotify.com/v1/albums/7rASm7HnbYY5git3gHnled",
		            "id": "7rASm7HnbYY5git3gHnled",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b273403883d3f1c68fd93a7a43dd",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e02403883d3f1c68fd93a7a43dd",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00004851403883d3f1c68fd93a7a43dd",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Pure... 80's Dance Party",
		            "release_date": "2011-06-06",
		            "release_date_precision": "day",
		            "uri": "spotify:album:7rASm7HnbYY5git3gHnled",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"
		                },
		                "href": "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of",
		                "id": "0LyfQWJT6nXafLPZqxe9Of",
		                "name": "Various Artists",
		                "type": "artist",
		                "uri": "spotify:artist:0LyfQWJT6nXafLPZqxe9Of"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/7rASm7HnbYY5git3gHnled"
		            },
		            "total_tracks": 68
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/0NyzfcGDZZ6GM25EBG9BYK"
		              },
		              "href": "https://api.spotify.com/v1/artists/0NyzfcGDZZ6GM25EBG9BYK",
		              "id": "0NyzfcGDZZ6GM25EBG9BYK",
		              "name": "Ray Parker Jr.",
		              "type": "artist",
		              "uri": "spotify:artist:0NyzfcGDZZ6GM25EBG9BYK"
		            }
		          ],
		          "disc_number": 3,
		          "track_number": 1,
		          "duration_ms": 239720,
		          "external_ids": {
		            "isrc": "USAR18400008"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/3xCwovEB8dxWWGopTwQ51S"
		          },
		          "href": "https://api.spotify.com/v1/tracks/3xCwovEB8dxWWGopTwQ51S",
		          "id": "3xCwovEB8dxWWGopTwQ51S",
		          "name": "Ghostbusters",
		          "popularity": 15,
		          "uri": "spotify:track:3xCwovEB8dxWWGopTwQ51S",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/0BkNXn1tOotLmTJE73hNnq",
		            "id": "0BkNXn1tOotLmTJE73hNnq",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b2734360c53faf78e828cd1fb3d4",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e024360c53faf78e828cd1fb3d4",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d000048514360c53faf78e828cd1fb3d4",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Tunak Tunak Tun",
		            "release_date": "1998-09-30",
		            "release_date_precision": "day",
		            "uri": "spotify:album:0BkNXn1tOotLmTJE73hNnq",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/6wa1AsxB9oJP7lwNSmbcYx"
		                },
		                "href": "https://api.spotify.com/v1/artists/6wa1AsxB9oJP7lwNSmbcYx",
		                "id": "6wa1AsxB9oJP7lwNSmbcYx",
		                "name": "Daler Mehndi",
		                "type": "artist",
		                "uri": "spotify:artist:6wa1AsxB9oJP7lwNSmbcYx"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/0BkNXn1tOotLmTJE73hNnq"
		            },
		            "total_tracks": 8
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/6wa1AsxB9oJP7lwNSmbcYx"
		              },
		              "href": "https://api.spotify.com/v1/artists/6wa1AsxB9oJP7lwNSmbcYx",
		              "id": "6wa1AsxB9oJP7lwNSmbcYx",
		              "name": "Daler Mehndi",
		              "type": "artist",
		              "uri": "spotify:artist:6wa1AsxB9oJP7lwNSmbcYx"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 8,
		          "duration_ms": 259399,
		          "external_ids": {
		            "isrc": "INM129800408"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/4Ll9OEuVYmd4VSnhHwxvCj"
		          },
		          "href": "https://api.spotify.com/v1/tracks/4Ll9OEuVYmd4VSnhHwxvCj",
		          "id": "4Ll9OEuVYmd4VSnhHwxvCj",
		          "name": "La La Dum",
		          "popularity": 0,
		          "uri": "spotify:track:4Ll9OEuVYmd4VSnhHwxvCj",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "IQ", "LY", "TJ", "VE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "AT", "BE", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "single",
		            "href": "https://api.spotify.com/v1/albums/77w2RP8IPvNQWwgZRZ47gL",
		            "id": "77w2RP8IPvNQWwgZRZ47gL",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b273c90cbfadad54fcb88cee6dd9",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e02c90cbfadad54fcb88cee6dd9",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00004851c90cbfadad54fcb88cee6dd9",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Do Your Thing",
		            "release_date": "2010-03-15",
		            "release_date_precision": "day",
		            "uri": "spotify:album:77w2RP8IPvNQWwgZRZ47gL",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/7k5NMuaLXe6SFdklcTWvXl"
		                },
		                "href": "https://api.spotify.com/v1/artists/7k5NMuaLXe6SFdklcTWvXl",
		                "id": "7k5NMuaLXe6SFdklcTWvXl",
		                "name": "6ix Toys",
		                "type": "artist",
		                "uri": "spotify:artist:7k5NMuaLXe6SFdklcTWvXl"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/77w2RP8IPvNQWwgZRZ47gL"
		            },
		            "total_tracks": 2
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/7k5NMuaLXe6SFdklcTWvXl"
		              },
		              "href": "https://api.spotify.com/v1/artists/7k5NMuaLXe6SFdklcTWvXl",
		              "id": "7k5NMuaLXe6SFdklcTWvXl",
		              "name": "6ix Toys",
		              "type": "artist",
		              "uri": "spotify:artist:7k5NMuaLXe6SFdklcTWvXl"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 1,
		          "duration_ms": 244560,
		          "external_ids": {
		            "isrc": "GBMCZ0600269"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/2Py3qHXUiOcL5Pb4nXjZFj"
		          },
		          "href": "https://api.spotify.com/v1/tracks/2Py3qHXUiOcL5Pb4nXjZFj",
		          "id": "2Py3qHXUiOcL5Pb4nXjZFj",
		          "name": "Do Your Thing",
		          "popularity": 25,
		          "uri": "spotify:track:2Py3qHXUiOcL5Pb4nXjZFj",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "VE", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "ZW", "BJ", "MG", "MU", "MZ", "AO", "CI", "DJ", "ZM", "CD", "CG", "IQ", "LY", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/6nw3PwoeoecrpnjNfG3otG",
		            "id": "6nw3PwoeoecrpnjNfG3otG",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b273d719c1a4173dc8e88f552b1d",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e02d719c1a4173dc8e88f552b1d",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00004851d719c1a4173dc8e88f552b1d",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Liberté chérie",
		            "release_date": "2015",
		            "release_date_precision": "year",
		            "uri": "spotify:album:6nw3PwoeoecrpnjNfG3otG",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/5Qx5L4WgeM5LwVhHsMMWkM"
		                },
		                "href": "https://api.spotify.com/v1/artists/5Qx5L4WgeM5LwVhHsMMWkM",
		                "id": "5Qx5L4WgeM5LwVhHsMMWkM",
		                "name": "Les Yeux D'La Tête",
		                "type": "artist",
		                "uri": "spotify:artist:5Qx5L4WgeM5LwVhHsMMWkM"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/6nw3PwoeoecrpnjNfG3otG"
		            },
		            "total_tracks": 16
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/5Qx5L4WgeM5LwVhHsMMWkM"
		              },
		              "href": "https://api.spotify.com/v1/artists/5Qx5L4WgeM5LwVhHsMMWkM",
		              "id": "5Qx5L4WgeM5LwVhHsMMWkM",
		              "name": "Les Yeux D'La Tête",
		              "type": "artist",
		              "uri": "spotify:artist:5Qx5L4WgeM5LwVhHsMMWkM"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 9,
		          "duration_ms": 226866,
		          "external_ids": {
		            "isrc": "FR9W11520545"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/2UmwYdFAfUtRjaduAv5Npb"
		          },
		          "href": "https://api.spotify.com/v1/tracks/2UmwYdFAfUtRjaduAv5Npb",
		          "id": "2UmwYdFAfUtRjaduAv5Npb",
		          "name": "Kezta",
		          "popularity": 21,
		          "uri": "spotify:track:2UmwYdFAfUtRjaduAv5Npb",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "AT", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/48IVOAk7MTLauDVTM0sWFu",
		            "id": "48IVOAk7MTLauDVTM0sWFu",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b273be5e04d8ce8358f682ea3859",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e02be5e04d8ce8358f682ea3859",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00004851be5e04d8ce8358f682ea3859",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Sevastopol",
		            "release_date": "2002-01-01",
		            "release_date_precision": "day",
		            "uri": "spotify:album:48IVOAk7MTLauDVTM0sWFu",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/2ov6b5Q3TnZ2BQZnM61SV6"
		                },
		                "href": "https://api.spotify.com/v1/artists/2ov6b5Q3TnZ2BQZnM61SV6",
		                "id": "2ov6b5Q3TnZ2BQZnM61SV6",
		                "name": "Dire Gelt",
		                "type": "artist",
		                "uri": "spotify:artist:2ov6b5Q3TnZ2BQZnM61SV6"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/48IVOAk7MTLauDVTM0sWFu"
		            },
		            "total_tracks": 11
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/2ov6b5Q3TnZ2BQZnM61SV6"
		              },
		              "href": "https://api.spotify.com/v1/artists/2ov6b5Q3TnZ2BQZnM61SV6",
		              "id": "2ov6b5Q3TnZ2BQZnM61SV6",
		              "name": "Dire Gelt",
		              "type": "artist",
		              "uri": "spotify:artist:2ov6b5Q3TnZ2BQZnM61SV6"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 1,
		          "duration_ms": 195613,
		          "external_ids": {
		            "isrc": "USA560765487"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/5mLfWjMobEnDL1VdSQqKsk"
		          },
		          "href": "https://api.spotify.com/v1/tracks/5mLfWjMobEnDL1VdSQqKsk",
		          "id": "5mLfWjMobEnDL1VdSQqKsk",
		          "name": "Dzhankoye",
		          "popularity": 5,
		          "uri": "spotify:track:5mLfWjMobEnDL1VdSQqKsk",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      },
		      {
		        "added_at": "2024-03-29T11:45:15Z",
		        "added_by": {
		          "external_urls": {
		            "spotify": "https://open.spotify.com/user/113210559"
		          },
		          "href": "https://api.spotify.com/v1/users/113210559",
		          "id": "113210559",
		          "type": "user",
		          "uri": "spotify:user:113210559"
		        },
		        "is_local": false,
		        "primary_color": null,
		        "track": {
		          "preview_url": null,
		          "available_markets": [
		            "AR", "AU", "ET", "XK"
		          ],
		          "explicit": false,
		          "type": "track",
		          "episode": false,
		          "track": true,
		          "album": {
		            "available_markets": [
		              "AR", "AU", "TJ", "VE", "ET", "XK"
		            ],
		            "type": "album",
		            "album_type": "album",
		            "href": "https://api.spotify.com/v1/albums/6UQujMGmR5MbFsML9amCuN",
		            "id": "6UQujMGmR5MbFsML9amCuN",
		            "images": [
		              {
		                "url": "https://i.scdn.co/image/ab67616d0000b2734c5fedbe6cf1a65f70d5c30e",
		                "width": 640,
		                "height": 640
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d00001e024c5fedbe6cf1a65f70d5c30e",
		                "width": 300,
		                "height": 300
		              },
		              {
		                "url": "https://i.scdn.co/image/ab67616d000048514c5fedbe6cf1a65f70d5c30e",
		                "width": 64,
		                "height": 64
		              }
		            ],
		            "name": "Grievous Angel",
		            "release_date": "1974",
		            "release_date_precision": "year",
		            "uri": "spotify:album:6UQujMGmR5MbFsML9amCuN",
		            "artists": [
		              {
		                "external_urls": {
		                  "spotify": "https://open.spotify.com/artist/1KA3WXYMPLxomNuoE22LYd"
		                },
		                "href": "https://api.spotify.com/v1/artists/1KA3WXYMPLxomNuoE22LYd",
		                "id": "1KA3WXYMPLxomNuoE22LYd",
		                "name": "Gram Parsons",
		                "type": "artist",
		                "uri": "spotify:artist:1KA3WXYMPLxomNuoE22LYd"
		              }
		            ],
		            "external_urls": {
		              "spotify": "https://open.spotify.com/album/6UQujMGmR5MbFsML9amCuN"
		            },
		            "total_tracks": 9
		          },
		          "artists": [
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/1KA3WXYMPLxomNuoE22LYd"
		              },
		              "href": "https://api.spotify.com/v1/artists/1KA3WXYMPLxomNuoE22LYd",
		              "id": "1KA3WXYMPLxomNuoE22LYd",
		              "name": "Gram Parsons",
		              "type": "artist",
		              "uri": "spotify:artist:1KA3WXYMPLxomNuoE22LYd"
		            },
		            {
		              "external_urls": {
		                "spotify": "https://open.spotify.com/artist/5s6TJEuHTr9GR894wc6VfP"
		              },
		              "href": "https://api.spotify.com/v1/artists/5s6TJEuHTr9GR894wc6VfP",
		              "id": "5s6TJEuHTr9GR894wc6VfP",
		              "name": "Emmylou Harris",
		              "type": "artist",
		              "uri": "spotify:artist:5s6TJEuHTr9GR894wc6VfP"
		            }
		          ],
		          "disc_number": 1,
		          "track_number": 8,
		          "duration_ms": 212893,
		          "external_ids": {
		            "isrc": "USRE10700772"
		          },
		          "external_urls": {
		            "spotify": "https://open.spotify.com/track/7kJpAkJSFMCkM6T4plsRLd"
		          },
		          "href": "https://api.spotify.com/v1/tracks/7kJpAkJSFMCkM6T4plsRLd",
		          "id": "7kJpAkJSFMCkM6T4plsRLd",
		          "name": "Ooh Las Vegas (feat. Emmylou Harris) - 2007 Remaster",
		          "popularity": 38,
		          "uri": "spotify:track:7kJpAkJSFMCkM6T4plsRLd",
		          "is_local": false
		        },
		        "video_thumbnail": {
		          "url": null
		        }
		      }
		    ],
		    "limit": 100,
		    "next": null,
		    "offset": 0,
		    "previous": null,
		    "total": 9
		  },
		  "type": "playlist",
		  "uri": "spotify:playlist:0MQgLjWTwO5v0WvTFnuCpC"
		}
		"""

		let decoder = JSONDecoder()

		// The test is that it does not throw
		_ = try decoder.decode(Playlist.self, from: Data(json.utf8))
	}

}
