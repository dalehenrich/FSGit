helpers
isEntryCommit
	^ self hasCommitSignature & self hasCommitData
	