visiting
visitTag: aTag
	self addObject: aTag to: self tagHahes.
	aTag isLightWeightTag ifTrue: [ ^ self ].
	
	self visit: aTag object