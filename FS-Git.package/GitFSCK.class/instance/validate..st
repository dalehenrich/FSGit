validation
validate: anObject
	[ anObject validateIn: repository ]
		on: GitError
		do: [ :error | self collectError: error for: anObject ]