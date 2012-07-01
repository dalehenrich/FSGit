accessing
objectNamed: aHexHash ifAbsent: aBlock
	^self objectWithSignature: (GitObjectSignature from: aHexHash) ifAbsent: aBlock