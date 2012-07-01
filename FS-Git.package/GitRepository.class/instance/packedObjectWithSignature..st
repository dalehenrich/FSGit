public
packedObjectWithSignature: aGitObjectSignature
	^ self packedObjectWithSignature: aGitObjectSignature
			ifAbsent: [ 
				GitObjectNotFoundError 
					signal: 'Could not find packed object in pack index file.'
					with: aGitObjectSignature hexHash asString ].