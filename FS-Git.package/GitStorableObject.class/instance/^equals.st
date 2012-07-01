comparing
= other
	(other isKindOf: self class)
		ifFalse: [ ^ false ].
		
	^self signature = other signature