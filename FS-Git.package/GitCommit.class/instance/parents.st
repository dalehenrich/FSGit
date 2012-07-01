accessing
parents
	^ parents ifNil: [ 
		self isLoaded 
			ifTrue: [ parents := OrderedCollection new ]
			ifFalse: [ self loadLazily. parents ] ]