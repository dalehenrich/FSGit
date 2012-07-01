tests
testWritingSameCommitTwice
	| commit repository tree blob treeEntry |
	blob := GitBlob bytes: 'ablob'.
	treeEntry :=
		GitTreeEntry 
			entryName: 'theblob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature.
	tree := GitTree entries: { treeEntry }.
	commit := 
		GitCommit 
		withTree: tree 
		message: 'a commit'
		author: self defaultStamp
		committer: self defaultStamp.
	repository := GitRepository on: (FSFilesystem memory root).
	repository storeObject: commit.
	repository updateRef: repository headsDir / 'master' to: commit signature.
	
	self shouldnt: [ repository storeObject: commit ] raise: Exception.