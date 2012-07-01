accessing
looseObjectNames
	| r |
	r := OrderedCollection new.
	self looseObjectNamesDo: [ :n | r add: n ].
	^ r