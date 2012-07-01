tests
testHexHashFromIntegerHash
	| hash |
	hash := SecureHashAlgorithm new hashMessage: 11.
	self assert: hash printStringHex size = 39.
	hash := GitObjectSignature new hexHashFrom: hash.
	self assert: hash size = 40.
	self assert: hash asLowercase = hash.