tests
testStoreObjectCommitNoAuthor
	| commit |
	commit := GitCommit new.
	commit tree: GitTree new.
	self 
		should: [ repository storeObject: commit ] 
		raise: GitInvalidObjectError
		whoseDescriptionIncludes: 'Author identity is required.'
		description: 'Author needs to be set before storing the commit.'