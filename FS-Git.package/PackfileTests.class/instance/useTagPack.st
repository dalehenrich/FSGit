running
useTagPack
	packFile writeStreamDo: [ :stream |
		stream nextPutAll: self tagPackBytes ].
	indexFile writeStreamDo: [ :stream |
		stream nextPutAll: self tagPackIndexBytes ].
	(repository repository tagsDir / 'version1') writeStreamDo: [ :stream |
		stream nextPutAll: '3ec4730d40a77258b87702a516f351a19e57bd14' ]