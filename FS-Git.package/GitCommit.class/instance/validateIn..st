validating
validateIn: aGitRepository
	self loadLazily.
	self validate.
	aGitRepository objectWithSignature: self tree signature