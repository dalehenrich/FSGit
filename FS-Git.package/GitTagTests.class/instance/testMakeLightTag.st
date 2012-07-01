tests
testMakeLightTag
	| commit tree blob |
	blob := GitBlob bytes: 'test'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'testFile'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature}.
	commit := [ [ GitCommit withDefaultStamps ]
		on: GitStampNameRequest
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest
			do: [ :req | req resume: 'homer@nuke.com' ].
	commit
		tree: tree;
		message: 'myCommit'.
	
	GitTag makeLightWeightTag: 'testTag' for: commit in: repository.	
	self assert: (repository tagsDir / 'testTag') exists