operations
writePackFile
	self packFile reference writeStreamDo: [ :stream |
		self
			writePackFileHeaderOn: stream;
			writeCommitsOn: stream;
			writeTreesOn: stream;
			writeBlobsOn: stream ].
	self writePackFileTrailer