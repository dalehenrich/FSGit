validation
validateHead
	self validateHeadFile.
	[ repository head ifNotNilDo: [ :head | self accept: head ] ]
		on: GitError
		do: [ :error | 
			self collectError: error for: repository ]