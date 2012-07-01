public
tagNamed: aString ifAbsent: aBlock
	(self resolveRef: 'refs/tags/', aString) ifNotNilDo: [ :tagRef|
		 ^ self objectWithSignature: tagRef ifAbsent: aBlock ].
	^ aBlock value