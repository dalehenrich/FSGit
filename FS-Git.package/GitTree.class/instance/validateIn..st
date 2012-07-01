validation
validateIn: aGitRepository
	self validate.
	aGitRepository objectWithSignature: self signature.
	entries do: [ :item|
		item validateIn: aGitRepository ].