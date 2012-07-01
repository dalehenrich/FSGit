running
useOldPack
	packFile writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackBytes ].
	indexFile writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackIndexBytes ] 