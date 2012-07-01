tests
testCommit
	| blob tree commit tag lightTag |
	blob := GitBlob bytes: 'hello'.
	repository storeObject: blob.
	tree := GitTree
		entries: {(GitTreeEntry fileName: 'testFile' mode: GitTreeEntry fileMode objectSignature: blob signature)}.
	repository storeObject: tree.
	commit := (GitCommit new)
		author: self defaultStamp;
		committer: self defaultStamp;
		tree: tree;
		message: 'initial commit';
		yourself.
	repository storeObject: commit.
	tag := GitTag
		makeFullTag: 'tagtest'
		for: commit
		message: 'First tag'
		tagger: self defaultStamp
		in: repository.
	lightTag := GitTag makeLightWeightTag: 'light tag' for: commit in: repository.
	repository updateRef: 'HEAD' to: commit signature