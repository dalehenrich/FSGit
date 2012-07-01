instance creation
objectWithSignature: aGitObjectSignature from: aGitRepository ifAbsent: aBlock
	^self basicNew objectWithSignature: aGitObjectSignature from: aGitRepository ifAbsent: aBlock