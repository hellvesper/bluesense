(*
BlueSense AppleScript
Examples of AppleScript script to control Mac OS X that can be used with BlueSense for Mac (Bluetooth device detection).
https://apps.inspira.io/bluesense/en/
*)

-- SPOTIFY APPLICATION APPLESCRIPT
-- Play the music if Spotify for Mac is running.
------------------------------------------------------------------------
script SpotifyPlayPause
	try
		tell application "System Events"
			activate
			set runningApp to processes whose bundle identifier is "com.spotify.client"
		end tell
		
		if runningApp is not {} then
			tell application "Spotify" to play
		end if
	on error errString number errorNumber
		log (errString)
	end try
end script