accessing
tree
	^ tree ifNil: [ 
		self loadLazily. 
		tree ]