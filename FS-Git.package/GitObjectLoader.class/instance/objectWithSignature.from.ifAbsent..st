accessing
objectWithSignature: aGitObjectSignature from: aGitRepository ifAbsent: aBlock
	repository := aGitRepository.
	^self objectWithSignature: aGitObjectSignature ifAbsent: aBlock