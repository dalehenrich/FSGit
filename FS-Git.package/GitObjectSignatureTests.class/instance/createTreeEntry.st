helpers
createTreeEntry
	^ GitTreeEntry
			entryName: self treeEntryName
			mode: GitTreeEntry fileMode
			objectSignature: self createBlob signature