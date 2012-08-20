operations-writing
writeIndexFile
	self indexFile reference writeStreamDo: [ :stream | 
		self
			writeIndexFileHeaderOn: stream ].
	self writeIndexFileTrailer