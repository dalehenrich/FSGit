public-validating
validateTags
	[ repository tags do: [ :tag | self accept: tag ] ]
		on: GitError
		do: [ :error | 
			self collectError: error for: repository ]