accessing
commitHashes
	^ commitHashes ifNil: [ commitHashes := OrderedCollection new ]