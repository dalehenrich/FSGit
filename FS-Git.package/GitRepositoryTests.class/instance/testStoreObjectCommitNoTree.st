tests
testStoreObjectCommitNoTree
	| commit |
	commit := GitCommit new.
	self 
		should: [ repository storeObject: commit ] 
		raise: GitInvalidObjectError
		whoseDescriptionIncludes: 'Cannot have a commit without a tree.'
		description: 'Every commit needs a tree. Make sure this is checked for.'