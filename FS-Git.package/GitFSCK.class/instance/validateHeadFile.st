validation
validateHeadFile
	[ repository headFile exists  ifFalse: [ self invalidRepository: 'Could not find ''HEAD''' ] ]
		on: GitError
		do: [ :error |
			self collectError: error for: repository ]