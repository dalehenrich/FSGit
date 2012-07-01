accessing
objectNamed: aHexHash
	^self objectWithSignature: (GitObjectSignature from: aHexHash)