tests
testRemoveEntry
	| tree collection entry1 entry2 entry3 |
	entry1 := GitTreeEntry
		entryName: 'entry 1'
		mode: GitTreeEntry fileMode
		objectSignature: (GitObjectSignature from: 1).
	entry2 := GitTreeEntry
		entryName: 'entry 2'
		mode: GitTreeEntry fileMode
		objectSignature: (GitObjectSignature from: 2).
	entry3 := GitTreeEntry
		entryName: 'entry 3'
		mode: GitTreeEntry fileMode
		objectSignature: (GitObjectSignature from: 3).
	collection := OrderedCollection new add: entry1; add: entry2; add: entry3; yourself.
	tree := GitTree entries: collection.
	
	self assert: tree entries size = 3.
	self assert: (tree entries includesKey: entry1 entryName).
	self assert: (tree entries includesKey: entry2 entryName).
	self assert: (tree entries includesKey: entry3 entryName).
	
	tree removeEntryAt: entry2 entryName.
	self assert: tree entries size = 2.
	self deny: (tree entries includesKey: entry2 entryName).
	
	tree removeEntryAt: entry3 entryName.
	self assert: tree entries size = 1.
	self deny: (tree entries includesKey: entry3 entryName).
	
	tree removeEntryAt: entry1 entryName.
	self assert: tree entries isEmpty