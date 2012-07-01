enumerating
looseObjectNamed: aHexHash ifAbsent: aBlock
	| stream |
	stream :=
		self 
			streamLooseObjectNamed: aHexHash
			ifAbsent: [ ^ aBlock value ].
	^ GitStorableObject 
		fromLooseStream: stream
		in: self