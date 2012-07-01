tests
testBytePadding
	| signature testHash savedHash stream |
	testHash := '00a350a77157772e1e35bb27b0582a8c51094fac'.
	self assert: testHash size = 40.
	signature := GitObjectSignature from: testHash.
	self assert: signature hexHash = testHash.
	
	stream := GitStream new.
	signature saveTo: stream.
	savedHash := stream contents hex.
	self assert: savedHash size = 40.
	self assert: (savedHash beginsWith: '00a35').
	self deny: (savedHash beginsWith: 'a35').
	self assert: savedHash = testHash