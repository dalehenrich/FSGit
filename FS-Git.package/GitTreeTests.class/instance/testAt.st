tests
testAt
	| tree entry blob repo |
	blob := GitBlob bytes: 'testblob'.
	repo := GitRepository on: (FSFilesystem memory / 'testRepo').
	repo storeObject: blob.
	entry := GitTreeEntry
		entryName: 'testFile'
		mode: GitTreeEntry fileMode
		objectSignature: blob signature.
	tree := GitTree in: repo.
	tree entries: {entry}.
	
	self assert: (tree at: entry entryName) = blob