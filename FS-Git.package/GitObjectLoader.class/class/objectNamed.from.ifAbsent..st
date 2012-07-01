instance creation
objectNamed: aGitObjectSignature from: aGitRepository ifAbsent: aBlock
	^self basicNew objectNamed: aGitObjectSignature from: aGitRepository ifAbsent: aBlock