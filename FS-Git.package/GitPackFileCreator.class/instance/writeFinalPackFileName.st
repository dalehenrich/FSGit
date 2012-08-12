operations-writing
writeFinalPackFileName
	| finalHash entries |
	entries := self commitHashes, self treeHashes, self blobHashes.
	entries := (entries gather: [ :integer | integer asByteArray ]) asByteArray.
	finalHash := SecureHashAlgorithm new hashMessage: entries.
	self packFile reference moveTo: self packFile reference parent / finalHash asHexHash, 'pack'