public
branchNamed: aString
	^ self objectWithSignature: (self resolveRef: 'refs/heads/', aString)