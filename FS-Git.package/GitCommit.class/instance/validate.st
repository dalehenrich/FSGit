validating
validate
	tree ifNil: [ self invalid: 'Cannot have a commit without a tree.' ].
	tree species = GitTree ifFalse: [ self invalid: 'The tree of this commit object is not of class GitTree.' ].
	author ifNil: [ self invalid: 'Author identity is required.' ].
	committer ifNil: [ self invalid: 'Committer identity is required.' ].
	super validate.