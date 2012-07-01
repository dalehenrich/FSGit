validating
validateIn: aGitRepository
	self validate.
	aGitRepository objectWithSignature: self object signature.