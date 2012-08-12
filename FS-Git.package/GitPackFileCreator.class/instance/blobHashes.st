accessing
blobHashes
	^ blobHashes ifNil: [ blobHashes := OrderedCollection new ]