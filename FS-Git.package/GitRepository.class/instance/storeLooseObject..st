private
storeLooseObject: aGitStorableObject
	| zipStream compressed pathReference |
	pathReference := self baseDir resolve: (self looseObjectPathFor: aGitStorableObject signature).
	"we store an object with the same signature (happens with empty files)"
	pathReference exists ifTrue: [  ^ aGitStorableObject].
	
	zipStream := ZLibWriteStream on: (ByteArray new).
	zipStream nextPutAll: aGitStorableObject signature bytes; close.
	compressed := zipStream encodedStream contents.
	
	pathReference parent ensureDirectory.
	pathReference writeStreamDo: [ :stream | stream nextPutAll: compressed ].
	^aGitStorableObject