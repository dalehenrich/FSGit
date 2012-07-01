initialize-release
loadFrom: aStream
	| entry |
	[aStream atEnd] 
		whileFalse: [entry := (GitTreeEntry in: repository) loadFrom: aStream.
			self putEntry: entry].
	^self