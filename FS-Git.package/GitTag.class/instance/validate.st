validating
validate
	self name ifNil: [ self invalid: 'Tag name is required.' ].
	self isLightWeightTag ifTrue: [ ^ self ].
	super validate.
	self object ifNil: [ self invalid: 'Cannot have a full tag without a tagged object.' ].
	self tagger ifNil: [ self invalid: 'Tagger identity is required for full tags.' ].