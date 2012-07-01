as yet unclassified
readPackSignature
	self assert: (reader next: 4) asString = 'PACK'