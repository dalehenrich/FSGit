accessing
objectWithSignature: aGitObjectSignature
	^  self 
		objectWithSignature: aGitObjectSignature 
		ifAbsent: [ 
			GitObjectNotFoundError 
				signal: 'Object not found.'
				with: aGitObjectSignature asString]