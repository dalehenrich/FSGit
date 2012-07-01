private
looseObjectPathFor: aGitObjectSignature
	| hexHash |
	hexHash := aGitObjectSignature hexHash.
	^ 'objects/' , (hexHash first: 2) , '/' , (hexHash allButFirst: 2)