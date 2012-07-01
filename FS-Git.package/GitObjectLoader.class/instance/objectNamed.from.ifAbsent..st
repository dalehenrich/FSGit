accessing
objectNamed: aHexHash from: aGitRepository ifAbsent: aBlock
	repository := aGitRepository.
	^self objectNamed: aHexHash ifAbsent: aBlock