tests
testSettingEntries
	| collection tree entry1 entry2 |
	collection := OrderedCollection new.
	entry1 := GitTreeEntry 
		entryName: 'object1' 
		mode: GitTreeEntry fileMode
		objectSignature: (GitObjectSignature from: 234).
	entry2 := GitTreeEntry 
		entryName: 'object2' 
		mode: GitTreeEntry dirMode
		objectSignature: (GitObjectSignature from: 564).
	collection add: entry1; add: entry2.
	tree := GitTree entries: collection.
	
	self assert: (tree entries at: entry1 entryName)= entry1.
	self assert: (tree entries at: entry2 entryName) = entry2.
	self deny: entry1 = entry2