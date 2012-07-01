saving
store
	self isLightWeightTag
		ifTrue: [self storeLightWeightTag]
		ifFalse: [self storeFullTag]
	