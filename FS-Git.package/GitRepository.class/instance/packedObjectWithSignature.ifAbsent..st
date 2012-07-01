public
packedObjectWithSignature: aGitObjectSignature ifAbsent: aBlock
	| object |
	self packsDo: [ :each |
		object := each packedObjectAt: aGitObjectSignature hexHash.
		object ifNotNil: [^ object repository: self] ].
	^ aBlock value