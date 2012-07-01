accessing
packedObjectAt: sha1String
	| index packOffset |
	index := self tableIndexForSha: sha1String.
	index ifNil: [^ nil].
	packOffset := self offsetAt: index.
	^ self packedObjectAtOffset: packOffset