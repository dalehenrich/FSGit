accessing
unpackContentType: type
	(self isCommit: type) ifTrue: [ decodeClass := GitCommit. ^ self unpackSimpleContent ].
	(self isTree: type) ifTrue: [ decodeClass := GitTree. ^ self unpackSimpleContent ].
	(self isBlob: type) ifTrue: [ decodeClass := GitBlob. ^ self unpackSimpleContent ].
	(self isTag: type) ifTrue: [ decodeClass := GitTag. ^ self unpackSimpleContent ].
	(self isOfsDelta: type) ifTrue: [ ^ self unpackOffsetDeltaContent ].
	(self isRefDelta: type) ifTrue: [ ^ self unpackRefDeltaContent ].
	self invalidBytes: 'Invalid pack object type ', type printString