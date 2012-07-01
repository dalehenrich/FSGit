tests
testRetrievingBytes
	| blob |
	blob := GitBlob bytes: 'testBlob'.
	self assert: blob bytes = ('testBlob' asByteArray).
	
	blob := GitBlob bytes: 3242.
	self assert: blob bytes = (3242 asByteArray).
	
	blob := GitBlob bytes: #[3 42 45 3].
	self assert: blob bytes = #[3 42 45 3]