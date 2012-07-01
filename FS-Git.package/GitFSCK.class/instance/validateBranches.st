public-validating
validateBranches
	[ repository branches do: [ :head| self accept: head ] ]
		on: GitError
		do: [ :error | 
			self collectError: error for: repository ]