private
looseObjectStreamAt: aGitObjectSignature ifAbsent: aBlock
	^ (self baseDir resolve: (self looseObjectPathFor: aGitObjectSignature)) 
		readStreamDo: [ :stream | ReadStream on: (ZLibReadStream on: stream contents) contents ]
		ifAbsent: aBlock