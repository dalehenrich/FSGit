enumerating
looseObjectsDo: aBlock
	self looseObjectNamesDo: [ :signature|
		aBlock value: (self objectWithSignature: signature)]