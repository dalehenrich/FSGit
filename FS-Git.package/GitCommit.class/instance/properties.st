accessing
properties
	^ properties ifNil: [ 
		self loadLazily. 
		properties ]