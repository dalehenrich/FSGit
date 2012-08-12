operations
addObject: aGitObject to: aCollection
	| objectHash |
	objectHash := aGitObject hash.
	aCollection 
		findBinary: [ :hash | hash - objectHash ]
		do: [ :lower :upper | aCollection add: objectHash before: upper ]
		ifNone: [ aCollection add: objectHash ]