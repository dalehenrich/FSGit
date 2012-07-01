validation
validateBranches
	[ repository branches do: [ :head| self accept: head ] ]
		on: GitError
		do: [ :error | 
			self halt.
			self collectError: error for: repository ]