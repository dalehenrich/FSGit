visiting
visitTag: aTag
	self isLightWeightTag ifTrue: [ ^ self ].
	
	self visitCommit: aTag object