commands
uploadPack
	|null|
	null := 0 asCharacter asString.
	self sendCommand: 'git-upload-pack' 
		  argument: (self repository, null, self hostInformation, null).
	^ self parseUploadPackResponse.