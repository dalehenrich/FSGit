loading
objectWithSignature: aGitObjectSignature ifAbsent: aBlock
	^ GitObjectLoader objectWithSignature: aGitObjectSignature from: self ifAbsent: aBlock