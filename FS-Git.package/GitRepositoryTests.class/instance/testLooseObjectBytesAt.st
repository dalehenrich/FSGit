tests
testLooseObjectBytesAt
	| blob bytes |
	blob := repository storeObject: (GitBlob bytes: 'testBlob').
	bytes := repository looseObjectBytesAt: blob signature.

	self assert: bytes = (blob signature bytes)