accessing
looseObjectBytesAt: aGitObjectSignature
	^ (self looseObjectStreamAt: aGitObjectSignature) contents