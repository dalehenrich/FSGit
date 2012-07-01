class-tests
testWithSignature
	| instance signature |
	signature := GitObjectSignature from: 234.
	instance := GitStorableObject withSignature: signature.
	self assert: instance signature = signature.
	self assert: instance signature == signature