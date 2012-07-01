internal
basicCommit: aMessage to: branchName
	| commit parents author committer |
	"Disallow empty commits"
	modManager hasModifications ifFalse: [ ^ self ].
	modManager processChanges.
	
	commit := GitCommit
		withTree: modManager rootTree
		message: aMessage
		author: (author ifNil: [ author := GitStamp now ])
		committer: (committer ifNil: [ committer := GitStamp now ]).
		
	parents := OrderedCollection new.
	"don't add the fully loaded revision. add it without loaded dependencies:"
	revision ifNotNil: [ parents add: 
		(repository objectWithSignature: revision signature) ].
	commit parents: parents.
	
	repository storeObject: commit.
	repository updateRef: repository headsDir / branchName to: commit signature.
	"again, load the commit without attached dependecies:"
	revision := repository objectWithSignature: commit signature.

	self basicReset.