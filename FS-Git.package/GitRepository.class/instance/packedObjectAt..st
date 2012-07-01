accessing
packedObjectAt: objectName
	| object |
	self packsDo: [ :each |
					object := each objectAt: objectName.
					^object ifNotNil: [^ object] ].
	^ nil