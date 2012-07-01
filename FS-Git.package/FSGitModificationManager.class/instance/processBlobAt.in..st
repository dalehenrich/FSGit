operations
processBlobAt: path in: tree
	| reference data blob entry |
	reference := cache referenceTo: path.
	
	reference isFile ifFalse: [ ^ self].
	
	data := reference readStreamDo: [ :stream | stream contents ].
	blob := GitBlob bytes: data.
	repository storeObject: blob .
	
	entry := GitTreeEntry
		entryName: path basename
		mode: GitTreeEntry fileMode
		objectSignature: blob signature.
	tree putEntry: entry