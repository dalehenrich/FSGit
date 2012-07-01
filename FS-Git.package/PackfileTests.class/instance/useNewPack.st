running
useNewPack
	packFile writeStreamDo: [ :stream |
		stream nextPutAll: self newPackBytes ].
	indexFile writeStreamDo: [ :stream |
		stream nextPutAll: self newPackIndexBytes ] 