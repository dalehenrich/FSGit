comparing
= other
	(other isKindOf: self class)
		ifFalse: [ ^ false ].
	
	self isLightWeightTag ~= other isLightWeightTag
		ifTrue: [ ^ false ].
	
	self isLightWeightTag
		ifTrue: [ ^ self name = other name].
		
	^self signature = other signature