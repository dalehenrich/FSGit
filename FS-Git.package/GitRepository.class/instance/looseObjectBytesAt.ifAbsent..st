accessing
looseObjectBytesAt: aGitObjectSignature ifAbsent: aBlock
	^ (self looseObjectStreamAt: aGitObjectSignature ifAbsent: [ ^ aBlock value ]) contents