tests
testSize
	| treeEntry fileName mode signature sizeToBe |
	fileName := 'testFile'.
	mode := GitTreeEntry printMode: GitTreeEntry fileMode.
	signature := (GitBlob bytes: 'fooBlob') signature.
	treeEntry := GitTreeEntry 
					entryName: fileName 
					mode: GitTreeEntry fileMode
					objectSignature: signature.
					
	sizeToBe := 
		(mode size) +
		(Character space asInteger asByteArray size) +
		(fileName size) +
		(0 decimalDigitLength) +
		(signature size).
	
	self assert: signature size = 20.
	self assert: treeEntry size = sizeToBe.